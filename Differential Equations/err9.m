f = @(x,y)(2*x+1)/(5*y^4+1);
figure('name','Aiganym Zhandaulet')
[xi, yi] = improved(f, 2, 1, 0.1, 10)
error5 = abs(yi-(xi.^2+xi-4-yi.^5))
plot(xi, error5, 'g')
legend('Improved Euler''s method')
title('y = x^2+x-4-y^5')
xlabel('2 <= x <= 3') 
ylabel('Error')

figure('name','Aiganym Zhandaulet')
[xm, ym] = midpoint(f, 2, 1, 0.1, 10)
error6 = abs(ym-(xm.^2+xm-4-ym.^5))
plot(xm, error6, 'r')
legend('Midpoint method')
title('y = x^2+x-4-y^5')
xlabel('2 <= x <= 3') 
ylabel('Error')

figure('name','Aiganym Zhandaulet')
[xr, yr] = runge_kutta(f, 2, 1, 0.1, 10);
error7 = abs(yr-(xr.^2+xr-4-yr.^5));
plot(xr, error7)
legend('Runge-Kutta method')
title('y = x^2+x-4-y^5')
xlabel('2 <= x <= 3') 
ylabel('Error')