clc;clear all;close all
%%
sim('chap8_10sim.slx')
figure(1);
subplot(211);
plot(t,p(:,1),'k',t,p(:,3),'r:','linewidth',2);
xlabel('time(s)');ylabel('x1 and its estimation');
legend('ideal signal','estimation signal');
subplot(212);
plot(t,p(:,2),'k',t,p(:,4),'r:','linewidth',2);
xlabel('time(s)');ylabel('x2 and its estimation');
legend('ideal signal','estimation signal');
figure(2);
subplot(211);
plot(t,p(:,1)-p(:,3),'r','linewidth',2);
xlabel('time(s)');ylabel('error of x1 and its estimation');
subplot(212);
plot(t,p(:,2)-p(:,4),'r','linewidth',2);
xlabel('time(s)');ylabel('error of x2 and its estimation');
figure(3);
plot(t,p1(:,1),'k',t,p1(:,2),'r:','linewidth',2);
xlabel('time(s)');ylabel('x1 and its estimation');
legend('ideal signal','delay signal');