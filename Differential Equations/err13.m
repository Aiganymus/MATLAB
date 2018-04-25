f = @(x,y)7*exp(-3*x)-3*y;
figure('name','Aiganym Zhandaulet')
[xi, yi] = improved(f, 0, 6, 0.1, 10);
error5 = abs(yi-(exp(-3*xi).*(7*xi+6)))
plot(xi, error5, 'g')
legend('Improved Euler''s method')
title('y = exp(-3*T).*(7*T+6)')
xlabel('0 <= x <= 1') 
ylabel('Error')

figure('name','Aiganym Zhandaulet')
[xm, ym] = midpoint(f, 0, 6, 0.1, 10);
error6 = abs(ym-(exp(-3*xm).*(7*xm+6)))
plot(xm, error6, 'r')
legend('Midpoint method')
title('y = exp(-3*T).*(7*T+6)')
xlabel('0 <= x <= 1') 
ylabel('Error')

figure('name','Aiganym Zhandaulet')
[xr, yr] = runge_kutta(f, 0, 6, 0.1, 10);
error7 = abs(yr-(exp(-3*xr).*(7*xr+6)))
plot(xr, error7)
legend('Runge-Kutta method')
title('y = exp(-3*T).*(7*T+6)')
xlabel('0 <= x <= 1') 
ylabel('Error')