clc;
clear all;

syms k(t)
eqn1 = diff(k,1)==-1*k;
cond = k(0)==3;
sol = dsolve(eqn1,cond);
fplot(sol,[-4,4]);

hold on;
eqn2 = diff(k,1)==0*k;
sol = dsolve(eqn2,cond);
fplot(sol,[-4,4]);
eqn3 = diff(k,1)==1*k;
sol = dsolve(eqn3,cond);
fplot(sol,[-4,4]);
hold off;

legend('N<n','N=n','N>n');
title('AK Technology and Constant Labour Growth Rate');
xlabel('Time');
ylabel('Captial Stock');

grid on;