clc;clear;close all;
sim('chap6_1sim.slx')
figure(1);
subplot(211);
plot(t,y(:,1),'k',t,y(:,2),'r:','linewidth',2);
xlabel('time(s)');ylabel('Position tracking');
legend('Ideal position signal','Position signal tracking');
subplot(212);
plot(t,y(:,1)-y(:,2),'r','linewidth',2);
xlabel('time(s)');ylabel('Position tracking error');
figure(2);
plot(t,ut(:,1),'r','linewidth',2);
xlabel('time(s)');ylabel('Control input');
figure(3);
plot(t,y(:,3),'k',t,p(:,1),'r:','linewidth',2);
xlabel('time(s)');ylabel('J and its estimate');
legend('Practical J','Estimated J');