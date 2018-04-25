figure('name','Aiganym Zhandaulet')
f = @(x,y)x^2-3*x*y-3*y+y^2;
[x, y] = euler(f, 0, 2, 0.15, 3);
plot(x, y, 'g')
hold on 
[T, Y] = ode45(f, [0, 0.15], 2);
plot(T, Y, 'r')
hold on
legend('Euler''s method', 'ode45')
title('y'' = x^2-3*x*y-3*y+y^2')
xlabel('0 <= x <= 0.15') 
ylabel('approximate values of the function')