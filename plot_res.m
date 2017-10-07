function plot_res(Fa, Fb, wf, wh, a, b, ecuaciones, soluciones)

X = [0:0.1:2*a+b]';
sign1 = a*10+1;
sign2 = (a+b)*10+1;
sign3 = (2*a+b)*10+1;
pri = [X(1:sign1), zeros(size(X(1:sign1)))-Fa];
seg = [X(sign1:sign2), zeros(size(X(sign1:sign2)))-Fa-wf];
ter = [X(sign2:sign3), zeros(size(X(sign2:sign3)))-Fb+wh];
m1 = [X(1:sign1), zeros(size(X(1:sign1)))-Fa*X(1:sign1)];
m2 = [X(sign1:sign2), zeros(size(X(sign1:sign2)))-Fa*(X(sign1:sign2)+(b/2))-wf*X(sign1:sign2)];
m3 = [X(sign2:sign3), zeros(size(X(sign2:sign3)))-Fb*X(sign2:sign3)+wh*(X(sign1:sign2)=a)];

graph = [pri; seg; ter];

x = size(graph)(1);
graph = [graph; graph(x), 0];
x = size(graph)(1);
plot(graph(1:x), graph(x+1:x*2), "linewidth", 4);
hold on;
graph2 = [m1; m2; m3];
x2 = size(graph2)(1);
graph2 = [graph2; graph2(x2), 0];
x2 = size(graph2)(1);
plot(graph2(1:x2), graph2(x2+1:x2*2), "linewidth", 4);

end