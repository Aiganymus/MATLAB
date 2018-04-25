figure('name','Aiganym Zhandaulet')
f = @(x,y)sin(x*y)-x^2*y;
[x, y] = euler(f, 1, pi, 1.6, 3);
plot(x, y, 'g')
hold on 
[T, Y] = ode45(f, [1, 1.6], pi);
plot(T, Y, 'r')
hold on
legend('Euler''s method', 'ode45')
title('y'' = sin(x*y)-x^2*y')
xlabel('0 <= x <= 0.15') 
ylabel('approximate values of the function')