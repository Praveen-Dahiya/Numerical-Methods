%PRAVEEN DAHIYA 2K19/MC/099
%USING SUCCESSIVE SUBSTITUTION METHOD
%PROGRAM TO SOLVE EQUATION x^3-2*x-8=0

syms x
f=@(x)(x^3-2*x-8);
p = (2*x+8).^(1/3); 
l=input('The lower bound(f(x)<0) is :'); 
u=input('The upper bound(f(x)>0) is :');
n=0;
fl=f(l);
fu=f(u);
if (fl*fu)>0
    fprintf('No root in this Range');
else
x0=input('Enter initial approximation(fixed point):');
f=symfun(p,x);
syms x 
e=0.001;
fprintf('\n');

itr='Iteration';
curr='Current root';
sol='Solved root';
rel='Rel. error';
k='   ';
a=[itr,k,curr,k,sol,k,rel];
disp(a);
for i=1:100
    xn=f(x0);
    err=(abs(x0-xn)/xn)*100;
    fprintf('%5.0f %13.4f %13.4f %13.4f\n',n,x0,xn,err);
    x0=xn;
    n=n+1;
    if (err<=e) break; 
    end
end

fprintf('\nThe approx. root upto 2 decimal points is %0.2f ',x0);
end

