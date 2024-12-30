% https://stackoverflow.com/questions/49529693/using-lsqnonlin-with-vector-inputs

f = @(xt)[sin(xt(2)+xt(1).^2), cos(xt(1).^2)+3.*xt(2).^2];    
% xt = [x,t]   
% f = [f_1(xt), f_2(xt)]

lsqnonlin(f,[1,2])
