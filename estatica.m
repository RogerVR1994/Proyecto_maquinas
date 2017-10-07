function [Fa, Fb, soluciones, ecuaciones] = estatica(wf, wh, a, b)

ecuaciones = [1, -1; 0, 1];
soluciones = [wf+wh; (wf*(b/2)+wh*(b+a))/b];
sol = inv(ecuaciones)*soluciones;
Fa = sol(1);
Fb = sol(2);



end