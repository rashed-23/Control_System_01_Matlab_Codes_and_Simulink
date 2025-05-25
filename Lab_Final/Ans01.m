clc;
y= out.output.Data;
x=out.output.Time;

ymax=max(y)
max_index=find(y==ymax)
peak_time=x(max_index)
peak_overshoot= (ymax-10)/10*100

l=length(x);

value=y(l)
while((0.98*10)>=value & value<=(1.02*10) )
l=l-1;
value=y(l);
end
x(l)

