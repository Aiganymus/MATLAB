a0 = (1/(2*pi)) * int(sym('x*sin(x)'), [-pi, pi]);
an = (1/pi) * int(sym('x*sin(x)*cos(n*x)'), [-pi, pi]);
a1 = (1/pi) * int(sym('x*sin(x)*cos(x)'), [-pi, pi]);
bn = (1/pi) * int(sym('x*sin(x)*sin(n*x)'), [-pi, pi]);
f1 = an * sym('cos(n*x)');
f2 = bn * sym('sin(n*x)');
f = f1 + f2;
z5 = symsum(f, 'n', 2, 5) + a0 + a1;
z20 = symsum(f, 'n', 2, 20) + a0 + a1;
h1 = ezplot(z5, [-pi, pi]);
hold on;
h20 = ezplot(z20, [-pi, pi]);
hold on;
set(h1, 'color', 'r');
title('x*sin(x)')
set(h20, 'color', 'g');
hold on;



