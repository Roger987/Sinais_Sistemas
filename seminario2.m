    N=5;
    w=0.5*pi;
    n = -N:N;
    x = sinc(w*n);
    
    for k=1:2001
        w=(k-1)*pi/1000;
        e=(exp(j.*w.*n)).';
        X(k) = x*e;
    end
    X=abs(X);
    k=1:2001;
    f=(k-1)./1000;

    plot(f,X)
    xlabel('Frequência')
    ylabel('Amplitude')