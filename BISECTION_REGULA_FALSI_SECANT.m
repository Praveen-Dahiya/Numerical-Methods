
%PROGRAM TO SOLVE x^2-6*x*exp(-x)
%USING BISECTION METHOD
%USING REGULA FALSI METHOD
%USING SECANT METHOD

myfunction=@(x) x^2-6*x*exp(-x);

n=input('Enter 1 for Bisection Method\nEnter 2 for Regula Falsi Method\nEnter 3 for Secant Method\n');

switch n
    case 1
        x_lower=input('The lower bound(f(x)<0) is :');
x_upper=input('The upper bound(f(x)>0) is :');
x_mid=(x_lower+x_upper)/2;

if (myfunction(x_lower)*myfunction(x_upper))>0
    fprintf('No root in this Range');   
else
while abs(myfunction(x_mid))>0.001
    if (myfunction(x_mid)*myfunction(x_upper))<0
        x_lower=x_mid;
    else
        x_upper=x_mid;
    end
    x_mid=(x_lower+x_upper)/2;
    
end
fprintf('The root is %0.2f\n', x_mid)
end
    case 2
         x_lower=input('The lower bound(f(x)<0) is :');
x_upper=input('The upper bound(f(x)>0) is :');

f_0=subs(myfunction,x_lower);
f_1=subs(myfunction,x_upper);
f_2=(x_lower*f_1-x_upper*f_0)/(f_1-f_0);
if (myfunction(x_lower)*myfunction(x_upper))>0
    fprintf('No root in this Range');   
else
while abs(myfunction(f_2))>0.001
    if (myfunction(f_2)*myfunction(x_upper))<0
        x_lower=f_2;
    else
        x_upper=f_2;
    end
    f_2=(x_lower*f_1-x_upper*f_0)/(f_1-f_0);
    
end
fprintf('The root is %0.2f\n', f_2)
end
    case 3
         x_lower=input('The lower bound(f(x)<0) is :');
x_upper=input('The upper bound(f(x)>0) is :');

f_0=subs(myfunction,x_lower);
f_1=subs(myfunction,x_upper);
x_new=(x_lower*f_1-x_upper*f_0)/(f_1-f_0);
if (myfunction(x_lower)*myfunction(x_upper))>0
    fprintf('No root in this Range');   
else
while abs(myfunction(x_new))>0.001
    x_lower=x_upper;
    f_1=myfunction(x_new);
    x_new2=x_upper;
    x_upper=x_new;
    f_0=myfunction(x_new2);
    x_new=(x_lower*f_1-x_upper*f_0)/(f_1-f_0);
end
fprintf('The root is %0.2f\n', x_new)
end
    otherwise
        disp('Invalid Choice');
end

