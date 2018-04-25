figure('name','Aiganym Zhandaulet')
f = @(x,y)(2*x+1)/(5*y^4+1);

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
legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'SouthEast')
hold off

title('y'' = (2*x+1)/(5*y^4+1)')
xlabel('2 <= x <= 3') 
ylabel('approximate values of the function')

figure('name','Aiganym Zhandaulet')
error1 = abs(y-(x.^2+x-4-y.^5));
plot(x, error1, 'r')
hold on

error2 = abs(y1-(x1.^2+x1-4-y1.^5));
plot(x1, error2, 'y')
hold on

error3 = abs(y2-(x2.^2+x2-4-y2.^5));
plot(x2, error3, 'g')
hold on

error4 = abs(Y-(T.^2+T-4-Y.^5));
plot(T, error4, 'b')
hold on

legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'NorthWest')
hold off
title('y = y^5+y-x^2-x+4')
xlabel('2 <= x <= 3') 
ylabel('Error')
