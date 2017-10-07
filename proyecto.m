disp("Bienvenido al programa para calculo de flechas\nInserta los datos requeridos para realizar\nlos calculos")
disp("\n\n\n")
display("      Fa             Fb");
display("      |              |");
display("      v              v");
display("----------------------------");
display("|                          |");
display("----------------------------");
display("  a   |       b      |  a ");
display("      A              B    ");
wf = input("Peso de la flecha (lb):  ");
disp("\n");
wh = input("Peso de las aspas (lb):  ");
disp("\n");
a = input("Distancia de los extremos de la flecha hasta los rodamientos (in):");
disp("\n");
b = input("Distancia entre los rodamientos (in):");

[Fa, Fb, ecuaciones, soluciones] = estatica(wf, wh, a, b);

fprintf("El valor de Fa es igual a: 	%f\n", Fa);
fprintf("El valor de Fb es igual a: 	%f\n", Fb);
disp("\n\n");

plot_res(Fa, Fb, wf, wh, a, b, ecuaciones, soluciones);

