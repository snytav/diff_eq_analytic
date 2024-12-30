% https://in.mathworks.com/help/optim/ug/lsqnonlin.html

rng default % for reproducibility
d = linspace(0,3);
d1 = linspace(0,5);

y = exp(-1.3*d1) + 0.05*randn(size(d1));

fun = @(d)exp(-d*2.05)-y;

x0 = zeros(size(d,1));
x = lsqnonlin(fun,x0)

plot(d,y,'ko',d,exp(-x*d),'b-')
legend('Data','Best fit')
xlabel('t')
ylabel('exp(-tx)')
