clear all;
V = 1;
lamda = 0.1;
xi = .5;
mu =-1;
% lamda >0 , mu > 0 

lowerRange = -40 ; 
uperRange = 40 ; 

u(1,1) = 0;
for x= lowerRange :1:uperRange
for t= lowerRange : 1 : uperRange
    if(lamda>0 && mu <0)
     u(x+    (lowerRange * (-1))+1    ,  t+  (lowerRange * (-1))+1       ) = (1/6.0)*(V*V) - (2/3)*(lamda) - (1/6) - 2*lamda* (sech( sqrt(lamda)*(x-V*t+xi))*(sech( sqrt(lamda)*(x-V*t+xi))   ));
    end
end 
end


t= lowerRange :1 :uperRange ;

subplot(1,2,1)

%meshz(t,t,u);
hold on;

meshc(t,t,u);
hold on;

surfc(t,t,u);
hold on;

%waterfall(t,t,u);
hold on;
surfl(t,t,u);
hold on;

grid on;
xlabel('t');
zlabel('u(x,t)');
ylabel('x');
title('A');
colormap hsv
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,2,2)
% for t=0
h = u(:,11);
plot(h,'-.r*', 'LineWidth',2)

hold on;
% for t=2
h = u(:,13);
plot(h,'-*g', 'LineWidth',2)
hold on;
% for t=4
h = u(:,15);
plot(h,'-+b', 'LineWidth',2)
hold on;
grid on;

legend('t=0','t=2','t=4');
xlabel('x');
ylabel('u(x)');
title('B');

