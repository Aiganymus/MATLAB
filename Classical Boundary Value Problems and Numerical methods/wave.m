a = 2;
L = 1; % 0 < x < L
b = 0.5; % 0 < t < b
h = 0.2; %step for x 
n = fix(L/h)+1; %number of steps x
x = linspace(0, L, n); %create vector for x values 
k = h/a; %step for t
m = fix(b/k)+1; %number for steps t
t = linspace(0, b, m); %create vector for t values
U = zeros(n, m); %fill array with 0s
%initial values
U(:, 1) = sin(pi*x);
U(1, :) = 0;
U(end, :) = 0;
%calculate values for second row
for i = 2 : n-1
    U(i, 2) = (1-(a^2*k^2)/(h^2))*U(i, 1)+(a^2*k^2)/((h^2)*2)*(U(i+1, 1)+U(i-1, 1));
end

for j = 2 : m-1
    for i = 2 : n-1
        U(i, j+1) = (2-(2*a^2*k^2/(h^2)))*U(i, j) + (a^2*k^2/(h^2))*(U(i+1, j)+U(i-1, j))-U(i,j-1)
    end
end

[xx, tt] = meshgrid(t, x);
mesh(xx, tt, U)
xlabel('Time (sec)')
ylabel('X coordinate (m)')
zlabel('Temperature (F)')
        
        
        
        
        
        
        