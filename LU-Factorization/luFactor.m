function luFactor(A)
% function [L,U,P] = luFactor(A)
%Finds lower and upper Triangular matrices by using LU Decompostion
%   Inputs
%       A= coefficient matrix
%   Outputs
%       L= lower triangular matrix
%       U= upper triangular matrix
%       P= pivot matrix (if no pivoting occurs will be equal to identity
%       matrix)

[m,n]=size(A);
if n~=m
    disp("matrix does not have matching n and m dimensions")
end
P=eye(n,m);
L=eye(n,m);
% Set Lower and Pivot matrix equal to identity matrix
A_1=A;

for i=1:n
    % %   Pivoting
    % Finds maximum value in first column)
    Abs_A=abs(A_1(:,i));
    max_Val=max(Abs_A);
    [index,j]=find(A_1(:,i)==max_Val);
    A_1([index,i],:)= A_1([i,index],:);
    % Swaps max row with highest value in first column with 1st row
    P([index,i],:)=P([i,index],:);
    % Changes pivot matrix to match pivoting done to A
    
    % %   Lower Triangular
    A1_top= A_1(i,i);
    A1_current=A_1(i+1:n,i);
    L(i + 1 : n, i) = A1_current/A1_top;
    % Finds lower triangular matrix with Gauss Elimination
    %     Divides current value in column by top (nonzero) value in column to
    %     get factors for L
    
    % %   Upper Triangular
    for l = i + 1 : n
        A_mod=L(l,i)*A_1(i,:);
        A_1(l,:) = A_1(l,:) - A_mod;
        % Manipulates A into upper triangular matrix by using lower
        % triangular matrix factors
    end
    
end

U=A_1
L=L
P=P

end
