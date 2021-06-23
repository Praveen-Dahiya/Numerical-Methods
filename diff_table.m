
%To construct a Difference Table.
clc
clear all
x=input('Input x matrix-->');
%x=[20 25 30 35 40 45 ];
y=input('Input y matrix-->');
%y=[354 332 291 260 231 204 ];
n=length(x);
% forward difference
for i=1:n-1
 f(i,1)=(y(i+1)-y(i));
end
for j=2:n-1
 for i=1:n-j
 f(i,j)=(f(i+1,j-1)-f(i,j-1));

 end
end
fprintf('\nForward Difference Table\n');
fi='Δy';
se='Δ^2y';
th='Δ^3y';
fo='Δ^4y';
fl='Δ^5y';
k='   ';	
a=[k,fi,k,se,k,th,k,fo,k,fl];
disp(a);
disp(f);
% Backward difference
for i=1:n-1
 b(i,1)=(y(i+1)-y(i)); 
end

for j=2:n-1
 for i=n-1:-1:j
 b(i,j)=b(i,j-1)-b(i-1,j-1);
 end
end
fprintf('\nBackward Difference Table\n');
fi='∇y';
se='∇^2y';
th='∇^3y';
fo='∇^4y';
fl='∇^5y';
k='   ';	
a=[k,fi,k,se,k,th,k,fo,k,fl];
disp(a)
disp(b);
