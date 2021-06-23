clc;
clear all;
f=input('Enter f(x): ');
low_lim=input('Enter lower limit : '); 
upr_lim=input('Enter upper limit : ');  
n=input('Enter the  number of sub-intervals n: '); 

h=(upr_lim-low_lim)/n;
sum=0;
for k=1:1:n-1
 x(k)=low_lim+k*h;
 y(k)=f(x(k));
 sum=sum+y(k);
end
% Formula: (h/2)*[(y0+yn)+2*(y2+y3+..+yn-1)]
ans1=h/2*(f(low_lim)+f(upr_lim)+2*sum);
fprintf('\n The value of integration using trapezoidal rule %f',ans1); 
syms y
expr = 1/(1+y^2);
ans2 = vpa(int(expr,[0 6]));
fprintf('\n The value of direct integration  %f',ans2);
err=abs(ans1-ans2);
fprintf('\n Absolute Error :  %f',err);
fprintf('\n Relative Error :  %f',err/ans2);
 

