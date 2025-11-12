fresp
omega=dsa(:,1);
data=dsa(:,2)+i*dsa(:,3);

figure;

subplot(2,1,1)
plot(omega,20*log10(abs(data)))
grid on;
ylabel("Magnitude (dB)")
xlabel("Frequency (rad/s)")
xscale log

subplot(2,1,2)
plot(omega,(180/pi)*phase(data))
grid on;
ylabel("Phase (degrees)")
xlabel("Frequency (rad/s)")
xscale log