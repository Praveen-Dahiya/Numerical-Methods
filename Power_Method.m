%Program to find the dominant Eigen value and corresponding Eigen vector using Power method.
clc
clear all
A=input('Enter matrix :')
%A=[4 1 0;1 20 1;0 1 4]
X=input('Enter Initial eigenvector Guess :')
%X=[1;1;1];
terr=input('Enter the tolerance of error ');
err=10;
m1=1;
m2=1;
itr=1;
while err>terr
 v=A*X;
 m2=max(abs(v));
 X=v/m2;
 err=abs(m1-m2);
 m1=m2;
 fprintf('\nIteration NO.-->%d \n',itr);
 itr=itr+1;
 fprintf('\nThe corresponding eigenvector X is:');
 fprintf('\n %5.5f',X);
 fprintf('\nThe corresponding eigenvalue  is%5f\n',m1);
end
fprintf('\nThe dominant eigenvalue  is %5f\n',m1);
disp('The dominant eigenvector X is :');
fprintf('\n %5.5f',X);