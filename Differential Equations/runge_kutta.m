function [x, y] = runge_kutta(f, x0, y0, h, N)
    x = x0:h:x0 + (N * h);
    y = zeros(size(x));
    y(1) = y0;
    for k = 1:N
        K1 = f(x(k), y(k));
        K2 = f(x(k) + h/2, y(k) + h/2 * K1);
        K3 = f(x(k) + h/2, y(k) + h/2 * K2);
        K4 = f(x(k) + h, y(k) + h * K3);
        y(k + 1) = y(k) + h/6 * (K1 + 2*K2 + 2*K3 + K4);
    end
    x = x';
    y = y';
end