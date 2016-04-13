xZr	= linspace(0,60,1000);
xV	= 60 - xZr;
xNb	= 10;
xTi	= 30;
y = linspace(0,60);
x = [10, 30, 60-y, y];

figure(1);
plot(	xZr, Muggianu(xNb, xTi, xV, xZr), ...
		xZr, Kohler(xNb, xTi, xV, xZr), ...
		xZr, Colinet(xNb, xTi, xV, xZr));
legend('Muggianu', 'Kohler', 'Colinet');
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

M2 = Muggianu(25,25,25,25);
K2 = Kohler(25,25,25,25);
C2 = Colinet(25,25,25,25);