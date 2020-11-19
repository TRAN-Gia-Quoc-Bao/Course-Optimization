function [A,B]=ComputeMatrices(Y,to)
    N = length(Y);
    B = zeros(2*(N-1),1);
    A = zeros(2*(N-1),5);
    for j = 1:(N-1) 
        B(2*j-1,1) = Y(j+1,1) - Y(j,1);
        B(2*j,1) = Y(j+1,2) - Y(j,2);
        A(2*j-1,:) = to*[ Y(j,1) -Y(j,1)*Y(j,1) -Y(j,2)*Y(j,1) 0 0];
        A(2*j,:) = to*[ 0 0 0 -Y(j,2) Y(j,1)*Y(j,2)];   
    end
    return
    
    
    
