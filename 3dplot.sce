// Define a vector
t = -7 : .15 : 7;
// Define a grid
[x, y] = meshgrid(t, t);
// Define your function
z = cos(x) .* cos(y) .* exp(-sqrt(x.^2 + y.^2)/3);
// Plot default view
surf(z)
