figure('name','Aiganym Zhandaulet')
f = @(x,y)(-2*x-cos(x))/(3*y^2+4*y);

[x, y] = euler(f, 0, 1, 1, 10); %h=0.1
plot(x, y, 'g')
hold on 

[x1, y1] = euler(f, 0, 1, 1, 20); %h=0.05
plot(x1, y1, 'c')
hold on

[x2, y2] = euler(f, 0, 1, 1, 40); %h=0.025
plot(x2, y2, 'm')
hold on 

[T, Y] = ode45(f, [0, 1], 1);
plot(T, Y, 'r')
legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'SouthWest')
hold off

title('y'' = (-2*x-cos(x))/(3*y^2+4*y)')
xlabel('0 <= x <= 1') 
ylabel('approximate values of the function')