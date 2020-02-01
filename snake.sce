clear; xdel(winsid());
global a;
a="R";
function my_eventhandler(win, x, y, ibut)
  if ibut==-1000 then return,end
  [x,y]=xchange(x,y,'i2f')
  if (ibut == 119) then
        global a;
        a="U";
  elseif (ibut == 115) then
        global a;
        a="D";
  elseif (ibut == 97) then
        global a;
        a="L";
  elseif (ibut == 100) then
        global a;
        a="R";
  end
endfunction
x=0;
y=0;
vx=0.01;
vy=0.01;
score=0;
inc=0.0001;
dx=rand()*10-5
dy=rand()*10-5
arrow="R";
figure(1);
plot(x,y,'.');
h_compound = gce();
h_compound.children.mark_size = 10;
h_compound.children.mark_background = 2;
plot(dx,dy,'*');
j_compound = gce();
j_compound.children.mark_size = 10;
j_compound.children.mark_background = 4;
h_axes = gca();
h_axes.data_bounds = [-5,-5;5,5];

seteventhandler('my_eventhandler')
show_window();
while (1)
    drawlater();
    select a
    case "a" then
        y=y+vy
        if (y>5) then
            y=-5;
        end
    case "s" then
        y=y-vy
        if (y<-5) then
            y=5;
        end
    case "d" then
        x=x-vx
        if (x<-5) then
            x=5;
        end
    case "w" then
        x=x+vx
        if (x>5) then
            x=-5;
        end
    end
    sp1=abs(x-dx);
    sp2=abs(y-dy);
    if (sp1<0.5 & sp2<0.5) then
        score=score+1;
        dx=rand()*10-5
        dy=rand()*10-5
    end
    
    h_compound.children.data = [x,y];
    j_compound.children.data = [dx,dy];
    drawnow();
    if (vx < 0.2) then
        vx=vx+inc;
    end
    if (vy < 0.2) then
        vy=vy+inc;
    end
end
