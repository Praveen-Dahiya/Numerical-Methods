
%To find the solution of 4X4 system of linear equations by 
%Gauss-seidal Iterative Method

%a1*x+b1*y+c1*z+d1*w=e1
%a2*x+b2*y+c2*z+d2*w=e2
%a3*x+b3*y+c3*z+d3*w=e3
%a4*x+b4*y+c4*z+d4*w=e4

A=input('Enter the Coefficient Matrix A: ');
B=input('Enter the solution Matrix B :');
x=input('Enter the initial guess : ');
n=size(x,1);
normVal=Inf;
%[10 -1 2 0;-1 11 -1 3;2 -1 10 -1;0 3 -1 8]
%[6;25;-11;15]
%[0;0;0;0]
err=0.00001; itr=0;
while normVal>err
      x_old=x;
  for i=1:n
      s=0;
       for j=1:i-1
         s=s+A(i,j)*x(j);
       end
       for j=i+1:n
         s=s+A(i,j)*x_old(j);
       end
    x(i)=(1/A(i,i))*(B(i)-s);
  end
itr=itr+1;
fprintf('Solution of the 4x4 system after %d iteration  : \n%f\t%f\t%f\t%f \n\n  ',itr,x);

normVal=norm(x_old-x);
end
fprintf('Final Solution of the 4x4 system is : \n%f\n%f\n%f\n%f \n ',x);