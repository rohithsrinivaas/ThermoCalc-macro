% create an array of 1e4 elements ranging from 0 to 0.8
n = 1e4;
y_Al1 = linspace(0,0.8,n);

% Temperature (1st parameter) is given as 1200K
G = G_AlNi(1200, y_Al1);
% plotting Gibbs energy function to get the overall picture
plot(y_Al1,G);
ylabel('Gibbs energy (J/mol)');
xlabel('Site fraction of Al in 1st sublattice');
grid on;
title('Gibbs energy minimization');

% finding the minimum value in the Gibbs energy using fminbnd
T = 1200;
[y_Al1_min, G_min] = fminbnd(@(y) G_AlNi(T,y),0,0.8);
y_Al1_min
y_Al2_min = 0.8 - y_Al1_min
y_Ni1_min = 1 - y_Al1_min
y_Ni2_min = 1 - y_Al2_min
G_min

% finding the maximum value in the Gibbs energy
T = 1200;
[y_Al1_max, G_max] = fminbnd(@(y) -G_AlNi(T,y),0,0.8);
y_Al1_max
y_Al2_max = 0.8 - y_Al1_max
y_Ni1_max = 1 - y_Al1_max
y_Ni2_max = 1 - y_Al2_max
G_max