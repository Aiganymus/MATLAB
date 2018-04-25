a = 3;
b = 3;
h = 0.5;
n = fix(a/h)+1;
m = fix(b/h) +1;
x = linspace(0, a, n);
y = linspace(0, b, m);
U = zeros(n, m);
ave = 42.5;
U = ave*ones(n, m);
U(1, 1) = 40;
U(1, end) = 80;
U(end, 1) = 5;
U(end, end) = 45;
U(2:end-1, 1) = 10;
U(2:end-1, end) = 90;
U(1, 2:end-1) = 70;
U(end, 2:end-1) = 0;
w = 4/(2+sqrt(4-(cos(pi/(n-1))+cos(pi/(m-1)))^2));
err = 1;
cnt = 0;
while err > 0.001
    err = 0;
    for j = 2:m-1
        for i = 2:n-1
            relx = w*(U(i,j+1)+U(i,j-1)+U(i+1,j)+ U(i-1,j)-4*U(i,j))/4
            U(i,j) = U(i,j) + relx
            if err <= abs(relx)
                err = abs(relx)
            end
        end
    end
    cnt = cnt + 1
end
[xx, tt] = meshgrid(y, x);
mesh(xx, tt, U)
xlabel('X coordinate (m)')
ylabel('Y coordinate (m)')
zlabel('Temperature (F)')





