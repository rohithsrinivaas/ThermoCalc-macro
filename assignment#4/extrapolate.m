xZr	= linspace(0,.6,1000);
xV	= .6 - xZr;
xNb	= .1;
xTi	= .3;
% y = linspace(0,.6);
% x = [.1, .3, .6-y, y];

figure(1);
plot(	xZr*100, Muggianu(xNb, xTi, xV, xZr), ...
		xZr*100, Kohler(xNb, xTi, xV, xZr), ...
		xZr*100, Colinet(xNb, xTi, xV, xZr));
legend('Muggianu', 'Kohler', 'Colinet');
title('Extrapolated values of H mix');
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');

figure(2)
plot(xZr*100, Muggianu(xNb, xTi, xV, xZr))
title('Muggianu')
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');
% H = Muggianu(xNb, xTi, xV, xZr);

figure(3)
plot(xZr*100, Kohler(xNb, xTi, xV, xZr))
title('Kohler')
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');
% H = Kohler(xNb, xTi, xV, xZr);

figure(4)
plot(xZr*100, Colinet(xNb, xTi, xV, xZr));
title('Colinet')
grid on;
xlabel('at.% Zr');
ylabel('H mix (J/mol)');
% H = Colinet(xNb, xTi, xV, xZr);

Muggianu_25 = Muggianu(.25,.25,.25,.25);
Kohler_25 	= Kohler(.25,.25,.25,.25);
Colinet_25 	= Colinet(.25,.25,.25,.25);

M_min = fminbnd(@(x) Muggianu(0.1,0.3,0.6-x,x),0,0.6);
K_min = fminbnd(@(x) Kohler(0.1,0.3,0.6-x,x),0,0.6);
C_min = fminbnd(@(x) Colinet(0.1,0.3,0.6-x,x),0,0.6);