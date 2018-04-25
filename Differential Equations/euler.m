%%euler's method
function [ x, y ] = euler( f, x0, y0, b, n )
    h = (b - x0)/n; %%step
    x = x0 : h : b;
    y = zeros(size(x));
    y(1) = y0;
    for k = 1 : n
        y(k+1) = y(k) + h*f(x(k), y(k));
    end
    x = x';
    y = y';
end