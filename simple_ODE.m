% https://in.mathworks.com/help/symbolic/solve-a-single-differential-equation.html
syms y(t);
ode = diff(y,t) == t*y;
ySol(t) = dsolve(ode);

cond = y(0) == 2;
ySol(t) = dsolve(ode,cond)

