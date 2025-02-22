package com.alibaba.qlbenchjmh.operator;

import com.alibaba.qlexpress4.QLOptions;
import com.alibaba.qlexpress4.QLPrecedences;
import com.alibaba.qlexpress4.exception.ErrorReporter;
import com.alibaba.qlexpress4.runtime.QRuntime;
import com.alibaba.qlexpress4.runtime.Value;
import com.alibaba.qlexpress4.runtime.data.DataValue;
import com.alibaba.qlexpress4.runtime.operator.CustomBinaryOperator;
import com.alibaba.qlexpress4.runtime.operator.base.BaseBinaryOperator;

import java.util.Collection;
import java.util.Objects;

public class InOperator implements CustomBinaryOperator {
    private static final InOperator INSTANCE = new InOperator();

    private InOperator() {
    }

    public static InOperator getInstance() {
        return INSTANCE;
    }

    @Override
    public Object execute(Value left, Value right) throws Throwable {
        Object rightOperand = right.get();
        if (rightOperand == null) {
            return false;
        }

        Collection<?> rightCollection = (Collection<?>)rightOperand;
        for (Object rightElement : rightCollection) {
            if (Objects.equals(left.get(), rightElement)) {
                return true;
            }
        }
        return false;
    }
}
