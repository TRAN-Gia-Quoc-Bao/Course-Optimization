clear all
global gamma alpha lambda delta beta T rho nu P0 Q0
gamma = 1.46; alpha = 5.63; lambda = 0.16; delta = 0; beta = 0.48;
T = 30; rho = 0.35; nu = 0.001; P0 = 0.5; Q0 = 0.5;


%%
lesu=[0.5 ;0.8 ;0.3 ;1.9 ;0.54];

u = udet(T, lesu)
%%
[tt,xx]=ode45(@myode,[0 T],[P0 Q0 u],[],lesu)
plot(tt,xx(:,1:2))
plot(xx(:,1));
hold on
plot(xx(:,2));
xlabel('Time (s)')
ylabel('Cell numbers')
title('The change in the number of cells')
hold on,
plot(xx(:,1)+xx(:,2));
legend('P(t)','Q(t)','P(t)+Q(t)')
hold off
%%
[tt,xx]=ode45(@myode,[0 T],[P0 Q0 0],[],lesu);
plot(tt,xx(:,1:2))
%%
% lesu0=[rand();rand();rand();rand();rand()];
lesu0=[0;0;0;0;0;0;0;0;0;0];
lb = zeros(1,length(lesu)); 
ub = ones(1,length(lesu));
options=optimset('display','iter','MaxFunEvals',2000)
lesuopt=fmincon(@cost,lesu0,[],[],[],[],[0;0;0;0;0;0;0;0;0;0],[1;1;1;1;1;1;1;1;1;1],@constraints,options)

[tt,xx]=ode45(@myode,[0 T],[P0 Q0 0],[],lesuopt);
plot(tt,xx(:,1:2))
plot(xx(:,1));
hold on
plot(xx(:,2));
xlabel('Time')
ylabel('Cell numbers')
title('The change in the number of cells')
hold on,
plot(xx(:,1)+xx(:,2));
legend('P(t)','Q(t)','P(t)+Q(t)')
hold off