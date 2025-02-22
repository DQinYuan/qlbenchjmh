package com.alibaba.qlbenchjmh.operator;

import com.alibaba.qlexpress4.runtime.Value;

import java.util.Arrays;
import java.util.Collection;

/**
 * @author 冰够
 */
public class NotInOperator extends BaseCustomBinaryOperator {
    private static final NotInOperator INSTANCE = new NotInOperator();

    private NotInOperator() {
    }

    public static NotInOperator getInstance() {
        return INSTANCE;
    }

    @Override
    public Object execute(Value left, Value right) throws Throwable {
        if (right.get() == null) {
            return true;
        }
        Collection<?> rightCollection = right.get() instanceof Collection ? (Collection<?>)right.get() : Arrays.asList((Object[])right.get());
        for (Object rightItem : rightCollection) {
            if (equals(left.get(), rightItem)) {
                return false;
            }
        }
        return true;
    }
}
