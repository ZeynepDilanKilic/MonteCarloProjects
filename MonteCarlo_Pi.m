%Finding value of Pi with Monte Carlo Method.
clc
clear
close all
format long
a=0:10^(-3):1;
b=sqrt(-a.^2+1);
plot(a,b,'LineWidth',2)
xlabel('r')
ylabel('r')
title('Quarter Circle')
line([0;1],[0;0],'color','black','LineWidth',2) 
line([0;0],[0;1],'color','black','LineWidth',2)
text(0.2,0.4,'Area=\pi/4','FontSize',14)
hold on
sz=8;
k=0;
for i=1:10^8
    x=rand;
    y=rand;
    z=sqrt(-x^2+1);
    if y<=z
        k=k+1;
        %scatter(x,y,sz,'filled')
    end   
end
Pi=4*k/i  %#ok<NOPTS>