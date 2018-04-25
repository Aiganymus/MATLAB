figure('name','Aiganym Zhandaulet')
f = @(x,y)(x^2/(1+y^2))-2*y;

[x, y] = euler(f, 2, 1, 3, 10); %h=0.1
plot(x, y, 'g')
hold on 

[x1, y1] = euler(f, 2, 1, 3, 20); %h=0.05
plot(x1, y1, 'c')
hold on

[x2, y2] = euler(f, 2, 1, 3, 40); %h=0.025
plot(x2, y2, 'm')
hold on 

[T, Y] = ode45(f, [2, 3], 1);
plot(T, Y, 'r')
legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'NorthWest')
hold off

title('y'' = (x^2/(1+y^2))-2*y')
xlabel('2 <= x <= 3') 
ylabel('approximate values of the function')



