A = [-6 -25; 1 0];
B = [ 25; 0];
C = [1 0; 0 1];
D = [0;0];

out = sim(lab2_model);

figure;

subplot(1, 2, 1);
plot(out.tout, out.y);
grid on;
xlabel('Time');
ylabel('y');
title('Output y vs Time');

subplot(1,2,2);
plot(out.tout, out.y_dot);
grid on;
xlabel('Time');
ylabel('y\_dot');
title('y\_dot vs Time');

y1=out.y;
y_dot1=out.y_dot;
tout1 = out.tout;