wc=(0.3*pi);
L=50;
n1=-L:-1;
n2=1:L;
n=[n1 0 n2];
h1=(sin(wc*n1)./(pi*n1));
h2=(sin(wc*n2)./(pi*n2));
h0=wc/pi;
h=[h1 h0 h2];
figure
plot(n,h);
H=dtft(h,'r');
 m=1:1000;
w1=(0.1*pi);
w2=(0.5*pi);
x1=sinc(w1*m);
x2=sinc(w2*m);
x=x1+x2;
figure
plot(m,x)
y=conv(h,x);
X=dtft(x,'b');
Y=dtft(y,'g');
figure 
plot(x,'b');
hold on
plot(x1,'c');
plot(x2,'m');
plot(y,'g');