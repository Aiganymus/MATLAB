bn = (2/pi) * int(sym('x*sin(x)*sin(n*x)'), [0, pi]);
b1 = (2/pi) * int(sym('x*sin(x)*sin(x)'), [0, pi]);
f = bn * sym('sin(n*x)');
z5 = symsum(f, 'n', 2, 5) + b1;
z20 = symsum(f, 'n', 2, 20) + b1;
h1 = ezplot(z5, [0, pi]);
hold on;
h20 = ezplot(z20, [0, pi]);
hold on;
set(h1, 'color', 'r');
set(h20, 'color', 'g');
hold on;
title('x*sin(x)')
