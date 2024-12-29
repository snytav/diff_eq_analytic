% https://www.12000.org/my_notes/diffusion_convection_PDE/diffusion_convection_PDE.htm
% about solving ODEs
% https://www.mathworks.com/help/symbolic/solve-a-single-differential-equation.html
L0 = 10; 
v = 1/2; 
k = 1/2; 
syms t;
syms z;
syms f(t,z);

%ode = D[f[t, z], t] == k*D[f[t, z], {z, 2}] + v*D[f[t, z], z]; 
ode = diff(f,t) == k*diff(f,z,2) -v*diff(f,z);

% piecewise example
% piecewise(x < -2,-2,(-2 < x) & (x < 0),0,1)

% ic = f[0, z] == Piecewise[{{1, z == L0}, {0, True}}]; 
ic = f(0,z) == piecewise(z == L0,1,0);


% bc = {f[t, 0] == 0, f[t, L0] == 1}; 


