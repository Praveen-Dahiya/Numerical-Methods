
%To find the solution of 4X4 system of linear equations by 
%Jacobi Iterative Method

%a1*x+b1*y+c1*z+d1*w=e1
%a2*x+b2*y+c2*z+d2*w=e2
%a3*x+b3*y+c3*z+d3*w=e3
%a4*x+b4*y+c4*z+d4*w=e4

A=input('Enter the Coefficient Matrix A: ');
B=input('Enter the solution Matrix B :');
%[10 -1 2 0;-1 11 -1 3;2 -1 10 -1;0 3 -1 8]
%[6;25;-11;15]


jacobiMethod(A,B)
function Value = jacobiMethod(A,B);
  [M,N] = size(A); 
   x = zeros(M,1); 
  K = 100; 
   for k = 1:K
    x2 = x;
      for m = 1:N
        x(m) = (B(m) - (A(m,1:m-1)*x2(1:m-1))-(A(m,m+1:N)*x2(m+1:N)))/(A(m,m));
      end
      fprintf('Solution of the 4x4 system after %d iteration  : \n%f\t%f\t%f\t%f \n\n  ',k,x);

        errorVal = abs(x2-x); 
        err=0.00001;
        if errorVal<=err
         break;
        end
end
Value = x;
fprintf('Final Solution of the 4x4 system is : \n%f\n%f\n%f\n%f \n ',x); 
end