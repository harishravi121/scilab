speedofbrain=120/0.1;
speedtolocomotion=40/0.4;
threshold1=0.7;
deltathreshold=0.1;
bl=[5:5:150];
deltaS=200;
bloodlevel=bl/50;
threshold=threshold1+deltathreshold*bloodlevel;
speed=speedofbrain-deltaS*bloodlevel;
Ngenerations=4096;



prob=(threshold1./threshold)^12
intelligence=prob.*speed
lambda2=2*%pi/150
int2=intelligence+200*sin(bl*lambda2)
plot(bl,intelligence,bl,int2)
