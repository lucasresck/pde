function smooth(M, t, c, h)
    x0 = M(:, 1);
    y0 = M(:, 2);
    x = u_t(x0, h, c, t);
    y = u_t(y0, h, c, t);
    scatter(x, y, 8, "filled");
    hold on
    xlabel("x");
    ylabel("y");
    title("Polvo suavizado t = " + string(t) + ", c = " + string(c));
    hold off
end
