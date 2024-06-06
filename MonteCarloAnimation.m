clc
clear
close all
format long
a=0:pi/100:4*pi;
b=sin(a);
figure('units','normalized','outerposition',[0 0 1 1])
sz=8;
k=0;
for i=1:1000
    x=4*pi*rand;
    y=-1+2*rand;
    z=sin(x);
    if z>=y && y>0
        k=k+1;
        subplot(2,1,2);
        plot(a,b,'color','blue')
        line([0;4*pi],[0;0],'color','black','LineWidth',2) 
        line([0;0],[-1;1],'color','black','LineWidth',2)
        xlabel('x')
        ylabel('sin(x)')
        axis([0 4*pi -1 1])
        scatter(x,y,sz,'filled')
        drawnow
        hold on
    elseif z<=y && y<0
        k=k+1;
        subplot(2,1,2);
        plot(a,b,'color','blue')
        line([0;4*pi],[0;0],'color','black','LineWidth',2) 
        line([0;0],[-1;1],'color','black','LineWidth',2)
        xlabel('x')
        ylabel('sin(x)')
        scatter(x,y,sz,'filled')
        drawnow
        hold on
    end
    if mod(i,50)==0
    subplot(2,1,1);
    plot(0,0)
    set(gca,'xtick',[])
    set(gca,'ytick',[])
    A=k*8*pi/i;
    B=['Area = ',num2str(A)];
    C=['Random Number=',num2str(i)];
    text(-0.8,0,B,'FontSize',20)
    text(0,0,C,'FontSize',20)
    drawnow
    pause(0.05)
    end
end