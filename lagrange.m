
%For any function, find a value at a point in unequal interval.
%Estimate  the value using Lagrange Interpolating polynomial and also find the error.
clc
clear all
%Let equation be 6x^2+11x-35
p = [5 -2 -9];
polyval(p,6.55)
xG=[2.33 3.42 6.55 10.96 11.55];
yG=[13.48 42.64 192.41 806.28 892.46];
xCal=input('Enter x at which y is to calculated : ');
%[1.11 3.49 7.89 10.96 11.55]
%[-15.15 76.47 425.30 806.28 892.46]
n=length(xG);
yCal=0;
for i=1:n
num=1;
dem=1;
    for j=1:n
        if(i~=j)
       num=num*(xCal-xG(j));
      dem=dem*(xG(i)-xG(j));
        end
    end
yCal=yCal+(num/dem)*(yG(i));

end
fprintf('The value of y at x = %d calculated by Lagrange Interpolation is : %f\n',xCal,yCal);
t=polyval(p,xCal);
fprintf('The value of y at x = %d directly calculated using polynomial is : %f\n',xCal,t);
err=abs(t-yCal);
fprintf('Absoute Error : %f \n',err);
fprintf('Relative Error : %f \n',(err/t));
fprintf('Percentage Error : %f \n',(err/t)*100);
