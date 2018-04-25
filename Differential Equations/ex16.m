figure('name','Aiganym Zhandaulet')
f = @(x,y)(sin(x)/x^2)-(1/x)*y;

[x, y] = euler(f, 1, 2, 3, 10); %h=0.1
plot(x, y, 'g')
hold on 

[x1, y1] = euler(f, 1, 2, 3, 20); %h=0.05
plot(x1, y1, 'c')
hold on

[x2, y2] = euler(f, 1, 2, 3, 40); %h=0.025
plot(x2, y2, 'm')
hold on 

[T, Y] = ode45(f, [1, 3], 2);
plot(T, Y, 'r')
legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'SouthWest')
hold off

title('y'' = (sin(x)/x^2)-(1/x)*y')
xlabel('1 <= x <= 3') 
ylabel('approximate values of the function')



