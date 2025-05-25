clc
time=out.simout.Time;
y=out.simout.Data;

plot(time,y);
grid on

ylabel('Magnitude','FontWeight','bold');
xlabel('Time','FontWeight','bold');