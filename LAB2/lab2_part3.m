zeta1=0.6;
a1 = 50;
out2 = sim("lab2_part3_model");
y3a = out2.z;
tout3a = out2.tout;

zeta1=0.6;
a1 = 5;
out2 = sim("lab2_part3_model");
y3b = out2.z;
tout3b = out2.tout;

zeta1=0.6;
a1 = 2.5;
out2 = sim("lab2_part3_model");
y3c = out2.z;
tout3c = out2.tout;

zeta1=0.6;
a1 = -0.5;
out2 = sim("lab2_part3_model");
y3d = out2.z;
tout3d = out2.tout;

plot(tout1, y1);
hold on;
grid on;
plot(tout3a, y3a);
plot(tout3b, y3b);
plot(tout3c, y3c);
plot(tout3d, y3d);

legend('y1','y3a','y3b','y3c','y3d');
xlabel("Time (s)");
ylabel("Response");
