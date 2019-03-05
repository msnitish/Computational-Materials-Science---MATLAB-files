tic
clear all;
clc;

X=[0.05 0.11 0.15 0.31 0.46 0.52 0.70 0.74 0.82 0.98 1.171];
Y=[0.956 0.890 0.832 0.717 0.571 0.539 0.378 0.370 0.306 0.242 0.104];

n=4;   % a+2; where a is degree of polynomial


for i=1:n
    sum=0;
    for j=1:length(X)
        sum=sum+X(1,j).^i;
    end
    xsum(1,i)=sum;
end


for i=0:(n-2)
    sum=0;
    for j=1:length(X)
        sum=sum+(X(1,j).^i)*Y(1,j);
    end
    xysum(1,i+1)=sum;
end




A=[length(X) xsum(1,1) xsum(1,2);xsum(1,1) xsum(1,2) xsum(1,3); xsum(1,2) xsum(1,3) xsum(1,4)]

for t=1:(n-1)
    b(t,1)=xysum(1,t);
end


sol=A\b
disp('Required polynomial is : ')
syms x
P=sol(1,1) + sol(2,1)*x +sol(3,1)*x^2

toc