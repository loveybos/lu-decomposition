%实现对矩阵A的LU分解，L为下三角矩阵
function [L,U]=myLUfun(A)
[n,n]=size(A);
L=zeros(n,n);
U=zeros(n,n);
for i=1:n
    L(i,i)=1;
end
for k=1:n
    for j=k:n
        U(k,j)=A(k,j)-sum(L(k,1:k-1).*U(1:k-1,j)');       
    end
    for i=k+1:n
        L(i,k)=(A(i,k)-sum(L(i,1:k-1).*U(1:k-1,k)'))/U(k,k);        
    end
end
