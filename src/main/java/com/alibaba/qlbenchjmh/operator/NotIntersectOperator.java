package com.alibaba.qlbenchjmh.operator;

import com.alibaba.qlexpress4.runtime.Value;

import java.util.Arrays;
import java.util.Collection;

/**
 * @author 冰够
 */
public class NotIntersectOperator extends BaseCustomBinaryOperator {
    private static final NotIntersectOperator INSTANCE = new NotIntersectOperator();

    private NotIntersectOperator() {
    }

    public static NotIntersectOperator getInstance() {
        return INSTANCE;
    }

    @Override
    public Object execute(Value left, Value right) throws Throwable {
        Collection<?> leftCollection = (Collection<?>)left.get();
        Collection<?> rightCollection = right.get() instanceof Collection ? (Collection<?>)right.get() : Arrays.asList((Object[])right.get());
        return !hasIntersect(leftCollection, rightCollection);
    }
}
