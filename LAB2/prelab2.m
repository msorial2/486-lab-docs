
% plot out.tout against out.y and out.ydot in a 1x2 subplot
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

