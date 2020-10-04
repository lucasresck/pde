function freq = fourier_tuner(filepath)
    [y, Fs] = audioread(filepath);
    yhat = fft(y);
    % This is because of symmetry of Fourier coefficients
    max_freq = ceil(length(yhat)/2);
    [~, cicles] = max(abs(yhat(1:max_freq)));
    freq = cicles/(length(y)/Fs);
end
