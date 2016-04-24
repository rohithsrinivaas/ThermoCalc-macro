% created by abhishandy on 22-Apr-2016

% linearly discretising possible xZr values into 1000 intervals
xZr	= linspace(0,.6,1000);
xV	= .6 - xZr;
% xNb and xTi is constant
xNb	= .1;
xTi	= .3;

% combined plot
figure(1);
plot(	xZr*100, Muggianu(xNb, xTi, xV, xZr), ...
		xZr*100, Colinet(xNb, xTi, xV, xZr), ...
		xZr*100, Kohler(xNb, xTi, xV, xZr));
legend('Muggianu', 'Colinet', 'Kohler');
title('Extrapolated values of H mix');
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');


% individual plots==============================
figure(2)
plot(xZr*100, Muggianu(xNb, xTi, xV, xZr))
title('Muggianu')
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');

figure(3)
plot(xZr*100, Colinet(xNb, xTi, xV, xZr));
title('Colinet')
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');

figure(4)
plot(xZr*100, Kohler(xNb, xTi, xV, xZr))
title('Kohler')
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');

% Finding minima of H_mix
M_min = fminbnd(@(x) Muggianu(0.1,0.3,0.6-x,x),0,0.6);
C_min = fminbnd(@(x) Colinet(0.1,0.3,0.6-x,x),0,0.6);
K_min = fminbnd(@(x) Kohler(0.1,0.3,0.6-x,x),0,0.6);

% Numerical values for equiatomic quaternary alloy
Muggianu_25 = Muggianu(.25,.25,.25,.25)
Colinet_25 	= Colinet(.25,.25,.25,.25)
Kohler_25 	= Kohler(.25,.25,.25,.25)