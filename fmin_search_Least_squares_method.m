%set for both fit commands in the stats toolbox
xdata = [-2, -1.61, -1.33, -0.7, 0,0.45, 1.2, 1.64,2.32, 2.9];
ydata = [0.699369, 0.700462, 0695354, 1.03905, 1.97389, 2.41143, 1.91091, 0.919576, -0.730975, -1.42001];
fun = @(p) sum(ydata- p(1)*cos(p(2)*xdata)+ p(2)*sin(p(1)*xdata))).^2;
% p is our fitting parameter
pguess = [1,0.2];
% We use a command from a stats tool box.
mdl = fminsearch(fun,guess)
% We get a set of non-linear equations.
% and then the only way to solve them is to use newton raphson method.
% R-Sqaured value close  to 1 means the fit is good.

