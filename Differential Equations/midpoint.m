function [x, y] = midpoint(f, x0, y0, h, N)
    x = x0:h:x0 + (N * h);
    y = zeros(size(x));
    y(1) = y0;
    for k = 1:N
        y(k + 1) = y(k) + h * f(x(k) + (h/2), y(k) + (h/2)*f(x(k), y(k)));
    end
    x = x';
    y = y';
end