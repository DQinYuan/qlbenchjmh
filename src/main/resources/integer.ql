x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);

x = 2 + 2;
assert(x == 4);

y = x + 1;
assert(y == 5);

z = y + x + 1 + 2;
assert(z == 12);

x = 3;
assert(y == 3);

c1 = 1;
c2 = 2;

x = c2 + 2;
assert(x == 4);

x = 2 + c2;
assert(x == 4);

x = c2 + c2;
assert(x == 4);

y = x + c1;
assert(y == 5);

y = c1 + x;
assert(y == 5);

z = y + x + c1 + 2;
assert(z == 12);

z = y + x + 1 + c2;
assert(z == 12);

z = y + x + c1 + c2;
assert(z == 12);

x = 6 - 2;
assert(x == 4);

y = x - 1;
assert(y == 3);

x = 3;
assert(y == -3);

x = 3;
y = ~x;
assert(y == -4);

c1 = 1;
c2 = 2;
c6 = 6;

x = c6 - 2;
assert(x == 4);

x = 6 - c2;
assert(x == 4);

x = c6 - c2;
assert(x == 4);

y = x - c1;
assert(y == 3);

x = 3 * 2;
assert(x == 6);

y = x * 2;
assert(y == 12);

x = 80 / 4;
assert(x == 20.0);

y = x / 2;
assert(y == 10.0);

x = 100 % 3;
assert(x == 1);

y = 11;
assert(y == 2);

y = -11;
assert(y == -2);

x = 1 & 3;
assert(x == 1);

x = 1 | 3;
assert(x == 3);

x = 8 >> 1;
assert(x == 4);
assert(x instanceof Integer);

x = 8 << 2;
assert(x == 32);
assert(x instanceof Integer);

x = 8L << 2;
assert(x == 32);
assert(x instanceof Long);

x = -16 >> 4;
assert(x == -1);

x = Integer.MAX_VALUE << 1L;
assert(x == -2);
assert(x instanceof Integer);

x = new Long(Integer.MAX_VALUE).longValue() << 1;
assert(x instanceof Long);