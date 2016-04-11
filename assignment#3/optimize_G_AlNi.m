y_Al1 = linspace(0,1);
y_Al2 = 0.8 - y_Al1;
G = G_AlNi(1200, y_Al1, y_Al2);
% surface(G);
% view(3);
G_min1 = min(min(G));
[M, I] = min(G);

G_min2 = 1e5;
n = 1e4;
for y_Al1 = linspace(0,1,n)
    y_Al2 = 0.8 - y_Al1;
    if y_Al2 >= 0
        G = G_AlNi(1200,y_Al1,y_Al2);
        if (G_min2 > G)
            G_min2 = G;
            ym_Al1 = y_Al1;
            ym_Al2 = y_Al2;
        end
    end
end