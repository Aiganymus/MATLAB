%% L=1
a0 = int(sym('x^2-2*x'), 0, 1);
an = 2 * int(sym('(x^2-2*x)*cos(pi*n*x)'), 0, 1);
f = an * sym('cos(pi*n*x)');
z5 = symsum(f, 'n', 1, 5) + a0;
z20 = symsum(f, 'n', 1, 20) + a0;
h1 = ezplot(z5, 0, 1);
hold on;
h20 = ezplot(z20, 0, 1);
hold on;
set(h1, 'color', 'r');
set(h20, 'color', 'g');
hold on;
title('x^2 - 2*x')