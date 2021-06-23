
%PROGRAM TO FIND y(xn) FOR y′=f(x,y), y(x0) = y0, WITH STEP LENGTH h USING
%RUNGA-KUTTA 4 METHOD
clc
clear all
syms x y
f(x,y)=input('Enter function :');
%f(x,y)=(y^2-x^2)/(y^2+x^2);
%y-2*x
x0=input('Enter x0 :');
y0=input('Enter y0 :');
h=input('Enter Step Length :');
xn=input('Enter x where y is to be calculated :');
xa=x0;
ya=y0;
%xn=0.4;
%x0=0;
%y0=1.5;
nth=1;

l=h;
k1=vpa(h*f(x0,y0));
k2=vpa(h*f(x0+h/2,y0+k1/2));
k3=vpa(h*f(x0+h/2,y0+k2/2));
k4=vpa(h*f(x0+h,y0+k3));
yn1(x,y)=vpa(y0+(k1+2*k2+2*k3+k4)/6);
fprintf('   k1       k2      k3       k4\n');
fprintf('%f %f %f %f\n\n',k1,k2,k3,k4);
fprintf('y%d= %s\n',nth,yn1(x,y));
fprintf('%d Approximation--> %f\n\n',nth,yn1);
nth=nth+1;
while l<xn
   x0=h;
k1=vpa(h*f(x0,yn1));
k2=vpa(h*f(x0+h/2,yn1+k1/2));
k3=vpa(h*f(x0+h/2,yn1+k2/2));
k4=vpa(h*f(x0+h,yn1+k3));
yn1(x,y)=vpa(yn1+(k1+2*k2+2*k3+k4)/6);
fprintf('   k1       k2      k3       k4\n');
fprintf('%f %f %f %f\n\n',k1,k2,k3,k4);
fprintf('y%d= %s\n',nth,yn1(x,y));
fprintf('%d Approximation--> %f\n\n',nth,yn1);
l=l+h;
nth=nth+1;
end
syms y(x)
ode = diff(y) == f(x,y);
cond = y(xa) == ya;
ySol(x) = dsolve(ode,cond);

fprintf('Exact value--> %f\n',vpa(ySol(xn)));
fprintf('Error--> %f\n\n',vpa(yn1-ySol(xn)));