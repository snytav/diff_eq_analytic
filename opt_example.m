% https://stackoverflow.com/questions/61550018/least-squares-minimization-for-multiple-variables-matlab


Z = [1.49E+18 1.49E+19 1.49E+20 1.99E+15 1.99E+16 1.99E+17 1.49E+13 1.49E+14 1.49E+15];
sigma = [55.1705 79.1016 105.636 25.4809 40.8572 61.7238 12.8147 21.4054 34.8319];

% bounds
lb = [  10e10;
        10e-7;
        10e-15];
ub = [  10e19;
        50;
        10];
% initial guess
x0 = ones(3,1);

% create an anyonymous function handle (using @(x)
fnc = @(x) Fsigma(x,Z,sigma);
% optimization call: x = lsqnonlin(fun,x0,lb,ub)
[p,fval] = lsqnonlin(fnc,x0,lb,ub);

% optimization call: x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub)
fnc2 = @(x) sqrt(sum(fnc(x).^2));
[p2,fval2] = fmincon(fnc2,x0,[],[],[],[],lb,ub);


% cost function
function f = Fsigma(x, Z, sigma)
f = ((sigma-((1/x(1))./ asinh((Z./x(2)).^(1/x(3)))) )./sigma).^2;
end
