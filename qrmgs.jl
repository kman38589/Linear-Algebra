function qrmgs(A)
	(m,n)=size(A);
	R=zeros(m,m);
	Q=zeros(m,m);
	for i=1:n
		v=A[:,i];
	for i=1:n
		R[i,i]=norm(v);
		Q[:,i]=v/R[i,i];
		for j=i+1:n
			R[i,j]=Q[:,i]'*v;
			v=v-R[i,j]*Q[:,i];
		end
	end
	end

end
