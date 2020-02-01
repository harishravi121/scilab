t = linspace(0,10*%pi,500);
clf();
isoview; //set isoview axes
comet(t.*sin(t), t.*cos(t))
