figure('name','Aiganym Zhandaulet')
f = @(x,y)(exp(x)/(1+x^2)^2)-(2*x*y/(1+x^2));

[x, y] = euler(f, 0, 1, 2, 10); %h=0.1
plot(x, y, 'g')
hold on 

[x1, y1] = euler(f, 0, 1, 2, 20); %h=0.05
plot(x1, y1, 'c')
hold on

[x2, y2] = euler(f, 0, 1, 2, 40); %h=0.025
plot(x2, y2, 'm')
hold on 

[T, Y] = ode45(f, [0, 2], 1);
plot(T, Y, 'r')
legend('Euler''s method h=0.1', 'Euler''s method h=0.05', 'Euler''s method h=0.025', 'ode45', 'Location', 'SouthWest')
hold off

title('y'' = (exp(x)/(1+x^2)^2)-(2*x*y/(1+x^2))')
xlabel('0 <= x <= 2') 
ylabel('approximate values of the function')



