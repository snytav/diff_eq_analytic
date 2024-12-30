function f = get_f(x)
   f = x- ones(size(x))
end

f = @get_f;
x = [1 2 3];
steadystate = f(x);

lb=[0; 0 ;0];
ub=[1 ;1 ;1];
st = lb;
x=lsqnonlin(f,st);%,lb,ub);


