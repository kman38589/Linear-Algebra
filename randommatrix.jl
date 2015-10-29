function randommatrix(m,kappa)
    (U,X)=qr(rand(m,m));
    (V,X)=qr(rand(m,m));
    S=diagm(logspace(0,-log10(kappa),m));
    A=U*S*V;
end
