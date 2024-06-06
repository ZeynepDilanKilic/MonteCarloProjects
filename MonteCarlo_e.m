%Finding value of e with Monte Carlo Method.
clc
clear
close all
format long
a=0:10^(-3):1;
b=exp(a);
plot(a,b,'LineWidth',2)
xlabel('x')
ylabel('F(x)')
title('Function')
text(0.5,0.7,'Area=e-1','FontSize',14)
line([0;1],[0;0],'color','black','LineWidth',2) 
line([0;0],[0;3],'color','black','LineWidth',2)
hold on
sz=8;
k=0;
for i=1:10^8
    x=rand;
    y=3*rand;
    z=exp(x);
    if y<=z
        k=k+1;
        %scatter(x,y,sz,'filled')
    end   
end
e=(k*3/i)+1  %#ok<NOPTS>