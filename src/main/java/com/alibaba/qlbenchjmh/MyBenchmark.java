/*
 * Copyright (c) 2014, Oracle America, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 *  * Neither the name of Oracle nor the names of its contributors may be used
 *    to endorse or promote products derived from this software without
 *    specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 */

package com.alibaba.qlbenchjmh;

import com.alibaba.qlexpress4.Express4Runner;
import com.alibaba.qlexpress4.InitOptions;
import com.alibaba.qlexpress4.QLOptions;
import com.alibaba.qlexpress4.security.QLSecurityStrategy;
import com.ql.util.express.DefaultContext;
import com.ql.util.express.ExpressRunner;
import com.ql.util.express.Operator;
import org.openjdk.jmh.annotations.*;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;

@State(Scope.Benchmark)
@Fork(1)
@Warmup(iterations = 2)
public class MyBenchmark {

    public static ExpressRunner RUNNER_3 = new ExpressRunner();
    public static Express4Runner RUNNER_4 = new Express4Runner(InitOptions.builder()
            .securityStrategy(QLSecurityStrategy.open()).build());

    static {
        RUNNER_3.addFunction("assert", new Operator() {
            @Override
            public Object executeInner(Object[] objects) throws Exception {
                return null;
            }
        });
        RUNNER_4.addFunction("assert", (qRuntime, parameters) -> null);
    }

    @Param({"fibonacci.ql", "integer.ql", "local_variable.ql"})
    public String qlFile;

    private String script;

    @Setup(Level.Trial)
    public void setUp() throws URISyntaxException, IOException {
        URI uri = getClass().getClassLoader().getResource(qlFile).toURI();
        String uriStr = uri.toString();
        if (uriStr.contains("!")) {
            String[] array = uriStr.split("!");
            this.script = new String(
                    Files.readAllBytes(FileSystems.newFileSystem(URI.create(array[0]),
                            new HashMap<>()).getPath(array[1]))
            );
        } else {
            this.script = new String(Files.readAllBytes(Paths.get(uri)));
        }
    }

    @Benchmark
    public void testRunner3NoCache() throws Exception {
        RUNNER_3.execute(script, new DefaultContext<>(), null,
                false, false);
    }

    @Benchmark
    public void testRunner3Cache() throws Exception {
        RUNNER_3.execute(script, new DefaultContext<>(), null,
                true, false);
    }

    @Benchmark
    public void testRunner4NoCache() {
        RUNNER_4.execute(script, new HashMap<>(), QLOptions.builder()
                .cache(false).build());
    }

    @Benchmark
    public void testRunner4Cache() {
        RUNNER_4.execute(script, new HashMap<>(), QLOptions.builder()
                .cache(true).build());
    }
}
