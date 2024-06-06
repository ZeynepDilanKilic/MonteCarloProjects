%Finding Quadratic equation's integral values with Monte Carlo Method.
clc
clear
close all
format long
a=input('a=');
b=input('b=');
c=input('c=');
d=input('Last Value:');
e=input('First Value:');
n=e:10^(-4):d;
f=a*n.^2+b*n+c;
j=sum(abs(f)<=10^(-4));
plot(n,f,'LineWidth',2)
xlabel('x')
ylabel('f(x)')
hold on
m=min(f);
M=max(f);
line([e;d],[0;0],'color','black','LineStyle',':') 
line([0;0],[m;M],'color','black','LineStyle',':')
if j==0 && m>0
    g=M;
    h=0;
elseif j==0 && M<0
    g=m;
    h=0;
else
    g=M-m;
    h=m;
end
sz=8;
k=0;
for i=1:10^4
    x=e+(d-e)*rand;
    y=h+(g)*rand;
    z=a*x^2+b*x+c;
    if 0<=z
        if y<=z && 0<=y
        k=k+1;
        scatter(x,y,sz,'filled')
        end
    else
        if z<=y && y<=0
        k=k+1;
        scatter(x,y,sz,'filled')
        end
    end
end
Integral=k*((d-e)*(abs(g)))/i  %#ok<NOPTS>