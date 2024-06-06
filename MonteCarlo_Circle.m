%Making a circle with Monte Carlo Method.
clc
clear
close all
format long
line([-1;1],[0;0])
line([0;0],[-1;1])
hold on
sz=8;
k=0;
for i=1:10^3
    x=-1+2*rand;
    y=-1+2*rand;
    z=x^2+y^2;
    if 1>=z
        k=k+1;
        scatter(x,y,sz,'filled')
    end   
end
Pi=k*4/i  %#ok<NOPTS>