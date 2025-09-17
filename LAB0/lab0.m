% Jonathan Sengstock, Mark Sorial, Sohum Bhan
% ECE486 Lab 0
% Steady State Value = 1/3

sys = tf(1, [1, 1.5, 3.5, 3]);
[y, t] = step(sys);
plot(t, y);
hold on;
grid on;

max_val = max(y);
t2 = 0:0.1:max(t);
z = 0.33 * (1-exp(-0.5*t2));
plot(t2, z, ':');

xlabel('Time');
ylabel('Response');
legend;
title('msorial2-sohumb3-jms32 \alpha \zeta \pi \omega');

hold off;

oreint(gcf, 'landscape');
print(gcf, '-dpng', 'lab0plot.png');