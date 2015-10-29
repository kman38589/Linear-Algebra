function qrcgs(A)
    (m,n)=size(A);
    R=zeros(m,m);
    Q=zeros(m,m);
    for j=1:n
        v=A[:,j];
        for i=1:j-1
            R[i,j]=(Q[:,i]'*A[:,j])[1];
            v=v-R[i,j]*Q[:,i];
        end
        R[j,j]=norm(v);
        Q[:,j]=v/R[j,j];
    end
end

function qrcgs2(A)
    (m,~)=size(A);
    R=zeros(m,m);
    Q=zeros(m,m);
    for j=1:m
        v=A[:,j];
        for i= 1:j-1 
            R[i,j]=(Q[:,i]'*A[:,j])[1];
            v=v-R[i,j]*Q[:,i];
        end
        R[j,j]=norm(v);
        Q[: ,j]=v/R[j,j];
    end
    return (Q,R)
end
