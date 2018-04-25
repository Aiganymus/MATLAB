figure('name','Aiganym Zhandaulet')
f = @(x,y)(3/x^3)+1-(2*y/x);

[x, y] = euler(f, 1, 1, 2, 10); %h=0.1
plot(x, y, 'g')
hold on 

[x1, y1] = euler(f, 1, 1, 2, 20); %h=0.05
plot(x1, y1, 'c')
hold on

[x2, y2] = euler(f, 1, 1, 2, 40); %h=0.025
plot(x2, y2, 'm')
hold on 

[T, Y] = ode45(f, [1, 2], 1);
plot(T, Y, 'r')
legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'SouthEast')
hold off

title('y'' = (3/x^3)+1-(2*y/x)')
xlabel('1 <= x <= 2') 
ylabel('approximate values of the function')

figure('name','Aiganym Zhandaulet')
error = abs(y-((9*log(x)+x.^3+2)./(3*x.^2)));
plot(x, error)
hold on

error = abs(y1-(9*log(x1)+x1.^3+2)./(3*x1.^2));
plot(x1, error) 
hold on

error = abs(y2-(9*log(x2)+x2.^3+2)./(3*x2.^2));
plot(x2, error)
hold on

error = abs(Y-(9*log(T)+T.^3+2)./(3*T.^2));
plot(T, error)
hold on

legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'NorthEast')
hold off
title('y = (1/3*x^2)*(9*log(x) + x^3 + 2)')
xlabel('1 <= x <= 2') 
ylabel('Error')