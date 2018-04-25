figure('name','Aiganym Zhandaulet')

f = @(x,y)2*x^2+3*y^2-2; 
[x, y] = euler(f, 2, 1, 2.15, 3); 
plot(x, y, 'g')
hold on 

[x, y] = improved(f, 2, 1, 0.05, 3);
plot(x, y, 'c')
hold on 

[x, y] = midpoint(f, 2, 1, 0.05, 3);
plot(x, y, 'm')
hold on

[x, y] = runge_kutta(f, 2, 1, 0.05, 3);
plot(x, y, 'y')
hold on

[T, Y] = ode45(f, [2, 2.15], 1);
plot(T, Y, 'r')
hold on

legend('Euler''s method', 'Improved Euler''s method', 'Midpoint method', 'Runge-Kutta method', 'ode45', 'Location', 'NorthWest')
title('y'' = 2*x^2+3*y^2-2')
xlabel('2 <= x <= 2.15') 
ylabel('approximate values of the function')