function fx=dtft(x,str1)
%x=[1 1]
L=length(x);
step=0.001;
fx=[];

for f=-1:step:1
    y=[];
    for n=1:L
        y(n)=x(n)*exp(-1i*pi*f*n);
    end
    fx=[fx; sum(y)];
end

k=(-1:step:(1));
subplot(2,1,1)
plot(k,abs(fx),str1);
hold on
subplot(2,1,2)
plot(k,angle(fx),str1);
hold on 
end