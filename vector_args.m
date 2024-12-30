function f = get_f(x)
    f(1) = x(1);
    f(2) = x(2);
    f(3) = x(3);
end

f = @get_f;
x = [1 2 3];
steadystate = f(x);

lb=[0; 0 ;0];
ub=[1 ;1 ;1];
st = lb;
x=lsqnonlin(f,st);%,lb,ub);


