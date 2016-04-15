y_Al1 = linspace(0,0.8,1e4);
G = G_AlNi(1200, y_Al1);
plot(y_Al1,G);
ylabel('Gibbs energy (J/mol)');
xlabel('Site fraction of Al in 1st sublattice');
grid on;
title('Gibbs energy minimization');

[G_min1, ym1_Al1] = min(G);
ym1_Al1 = 0.8*ym1_Al1/100;

G_min2 = 1e5;
n = 1e4;
for y_Al1 = linspace(0,0.8,n)
    G2 = G_AlNi(1200,y_Al1);
    if (G_min2 > G2)
        G_min2 = G2;
        ym2_Al1 = y_Al1;
    end
end