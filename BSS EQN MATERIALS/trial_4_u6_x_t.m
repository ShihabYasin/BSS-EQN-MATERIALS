
V = 1;
lamda = 0.5;
xi = .5;
mu =0.5;
% lamda >0 , mu > 0 

x;
u(1,10) = 0;
for x=-10:1:10
for t=-10:1:10
    if(lamda>0 && mu >0)
    u(x+11,t+11) = (1/6.0)*(V*V) - (2/3)*(lamda) - (1/6) - 2*lamda* (csch( sqrt(lamda)*(x-V*t+xi))*(csch( sqrt(lamda)*(x-V*t+xi))   ));
    end
end 
end

t=-10:1:10;

subplot(1,2,1)

meshz(t,t,u);
hold on;

meshc(t,t,u);
hold on;

surfc(t,t,u);
hold on;

waterfall(t,t,u);
hold on;
surfl(t,t,u);
hold on;

grid on;
xlabel('t');
zlabel('u(x,t)');
ylabel('x');

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




