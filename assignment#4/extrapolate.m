xZr	= linspace(0,.6,1000);
xV	= .6 - xZr;
xNb	= .1;
xTi	= .3;
% y = linspace(0,.6);
% x = [.1, .3, .6-y, y];

figure(1);
plot(	xZr, Muggianu(xNb, xTi, xV, xZr), ...
		xZr, Kohler(xNb, xTi, xV, xZr), ...
		xZr, Colinet(xNb, xTi, xV, xZr));
legend('Muggianu', 'Kohler', 'Colinet');
title('Extrapolated values of H mix');
grid on;
xlabel('at.% Zr');
ylabel('H mix');

figure(2)
plot(xZr, Muggianu(xNb, xTi, xV, xZr))
title('Muggianu')
grid on;
% H = Muggianu(xNb, xTi, xV, xZr);

figure(3)
plot(xZr, Kohler(xNb, xTi, xV, xZr))
title('Kohler')
grid on;
% H = Kohler(xNb, xTi, xV, xZr);

figure(4)
plot(xZr, Colinet(xNb, xTi, xV, xZr));
title('Colinet')
grid on;
% H = Colinet(xNb, xTi, xV, xZr);

Muggianu_25 = Muggianu(.25,.25,.25,.25);
Kohler_25 	= Kohler(.25,.25,.25,.25);
Colinet_25 	= Colinet(.25,.25,.25,.25);