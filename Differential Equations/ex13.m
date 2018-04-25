figure('name','Aiganym Zhandaulet')
f = @(x,y)7*exp(-3*x)-3*y;

[x, y] = euler(f, 0, 6, 1, 10); %h=0.1
plot(x, y, 'g')
hold on 

[x1, y1] = euler(f, 0, 6, 1, 20); %h=0.05
plot(x1, y1, 'c')
hold on

[x2, y2] = euler(f, 0, 6, 1, 40); %h=0.025
plot(x2, y2, 'm')
hold on 

[T, Y] = ode45(f, [0, 1], 6);
plot(T, Y, 'r')
legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45')
hold off

title('y'' = 7*exp(-3*x)-3*y')
xlabel('0 <= x <= 1') 
ylabel('approximate values of the function')

figure('name','Aiganym Zhandaulet')
error = abs(y-exp(-3*x).*(7*x+6))
plot(x, error)
hold on

error1 = abs(y1-exp(-3*x1).*(7*x1+6))
plot(x1, error1)
hold on

error2 = abs(y2-exp(-3*x2).*(7*x2+6));
plot(x2, error2)
hold on

error3 = abs(Y-(exp(-3*T).*(7*T+6)));
plot(T, error3)
hold on

legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'NorthWest')
hold off
title('y = exp(-3*x)*(7*x+6)')
xlabel('0 <= x <= 1') 
ylabel('Error')


