function x=backsub(R,b)
(n,~)=size(R);
x=zeros(n,1);
R=eye(n);
U=eye(n);
for j=n:-1:1
    x[j]=b[j]/U[j,j];
    b[1:j-1]=b[1:j-1]-U[1:j-1,j]*x[j];
end
end
