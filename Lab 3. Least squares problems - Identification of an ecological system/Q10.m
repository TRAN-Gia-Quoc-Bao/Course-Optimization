lam = 0.5;
Np = 50;
N = length(Y);
B = zeros(2*(Np-1),1);
A = zeros(2*(Np-1),5);
H = zeros(5,5);
T = 0:tau:(tau*249);
Solu = zeros(250,5);

for i=1:(Np-1)
     Solu(i,:)=[1.3981 1.2277 0.5392 0.2842 1.3357];
end

Solu(1,:) = [1.3981 1.2277 0.5392 0.2842 1.3357];
v = [1.3981; 1.2277; 0.5392; 0.2842; 1.3357];

for j = Np:(N)
    [A,B]= ComputeMatrices(Y(j:j+Np-1,:),tau);
    v = v + inv(H)*A'*(B-A*v);
    Solu(j,:) = v';
    Solu(j,2) = Solu(j,1)/Solu(j,2);
end

subplot(321)
plot(T,Solu(:,1))
xlabel('Time (s)')
ylabel ('Value r')
title('The evolution of r')

subplot(322)
plot(T,Solu(:,2))
xlabel('Time (s)')
ylabel ('Value K')
title('The evolution of K')

subplot(323)
plot(T,Solu(:,3))
xlabel('Time (s)')
ylabel ('Value s')
title('The evolution of s')

subplot(324)
plot(T,Solu(:,4))
xlabel('Time (s)')
ylabel ('Value alpha')
title('The evolution of alpha')

subplot(325)
plot(T,Solu(:,5))
xlabel('Time (s)')
ylabel ('Value beta')
title('The evolution of beta')




