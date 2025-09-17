zeta1=0.6;
a1 = 50;
out1 = sim("lab2_part2_model");
y2a = out1.z;
tout2a = out1.tout;

a1 = 5;
out1 = sim("lab2_part2_model");
y2b = out1.z;
tout2b = out1.tout;

a1 = 2.5;
out1 = sim("lab2_part2_model");
y2c = out1.z;
tout2c = out1.tout;

a1 = -3;
out1 = sim("lab2_part2_model");
y2d = out1.z;
tout2d = out1.tout;

a1 = -30;
out1 = sim("lab2_part2_model");
y2e = out1.z;
tout2e = out1.tout;

plot(tout1, y1);
hold on;
grid on;
plot(tout2a, y2a);
plot(tout2b, y2b);
plot(tout2c, y2c);
plot(tout2d, y2d);
plot(tout2e, y2e);

legend('y1','y2a','y2b','y2c','y2d','y2e','y2f');
xlabel("Time (s)");
ylabel("Response");




