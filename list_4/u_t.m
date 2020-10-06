function u = u_t(u0, h, c, t)
    lambda = fft(-c*t*h);
    exp_lambda = exp(lambda);
    u1 = fft(u0);
    u2 = exp_lambda.*u1;
    u = ifft(u2);
end
