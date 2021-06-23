
%PROGRAM TO FIND y(xn) FOR y′=f(x,y), y(x0) = y0 USING PICARD METHOD


clc
clear all
syms x y
f(x,y)=input('Enter function :');
%f(x,y)=x+y^2;

x0=input('Enter x0 :');
y0=input('Enter y0 :');
xn=input('Enter x where y is to be calculated :');
%y0=0;
%x0=0;
%xn=0.4
nth=1;
yn1(x,y)=y0+int(f(x,y0),x);
fprintf('y%d= %s\n',nth,yn1(x,y));
fprintf('%d Approximation--> %f\n\n',nth,yn1(xn,0));

nth=nth+1;

for i=1:4
yn1(x,y)=y0+int(f(x,yn1),x);
fprintf('y%d= %s\n',nth,yn1(x,y));
fprintf('%d Approximation--> %f\n\n',nth,yn1(xn,0));
nth=nth+1;
end

syms y(x)
ode = diff(y) == f(x,y);
cond = y(x0) == y0;
ySol(x) = dsolve(ode,cond);

fprintf('Exact value--> %f\n',vpa(ySol(xn)));
fprintf('Error--> %f\n\n',vpa(yn1(xn,0)-ySol(xn)));


