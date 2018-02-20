%% L=1
bn = 2 * int(sym('(x-x^2)*sin((pi*(2*n-1)*x)/2)'), 0, 1);
f = bn * sym('sin((pi*(2*n-1)*x)/2)');
z5 = symsum(f, 'n', 1, 5);
z20 = symsum(f, 'n', 1, 20);
h1 = ezplot(z5, 0, 1);
hold on;
h20 = ezplot(z20, 0, 1);
hold on;
set(h1, 'color', 'r');
set(h20, 'color', 'g');
hold on;
title('x - x^2')