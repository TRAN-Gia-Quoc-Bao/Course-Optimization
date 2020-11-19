T = 0:tau:(tau*249);
X0 = Y(1,:);
[tt,xx] = ode45(@solvediff,0:tau:(tau*249),X0,[],v);
    plot(tt,xx(:,1:2));
    plot(T,xx(:,1));
    hold on 
    plot(T,xx(:,2));
    xlabel('Time (s)')
    ylabel('Size of predators/prey')
    title('The evolution of the size')
    hold off
    hold on
    plot(T,Y(:,1))
    plot(T,Y(:,2))
    hold off
    legend('P(t)','Q(t)','Pdata','Qdata')