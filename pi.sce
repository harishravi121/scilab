s=0
for x=1:1:1000
    s=s+(-1)^(x+1)/(2*x-1)*4;
end
disp(s)
