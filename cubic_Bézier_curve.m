clc
clear all;
px = ['x-coordinate of first control point !!  \n';
      'x-coordinate of second control point !! \n';
      'x-coordinate of third control point !!  \n'
      'x-coordinate of fourth control point !! \n'];
py = ['y-coordinate of first control point !!  \n';
      'y-coordinate of second control point !! \n';
      'y-coordinate of third control point !!  \n';
      'y-coordinate of fourth control point !! \n';];
p1 = [input(px(1,1:size(px,2))) ,input(py(1,1:size(py,2)))];
p2 = [input(px(2,1:size(px,2))) ,input(py(2,1:size(py,2)))];
p3 = [input(px(3,1:size(px,2))) ,input(py(3,1:size(py,2)))];
p4 = [input(px(4,1:size(px,2))) ,input(py(4,1:size(py,2)))];
P = [p1; p2; p3; p4];
A = [-1 3 -3 1;
      3 -6 3 0;
      -3 3 0 0;
      1 0 0 0];
t = 0:0.01:1;
x = zeros(1,size(t,2));
y = zeros(1,size(t,2));
for i=1:1:size(t,2)
    p = ([t(1,i)^3 t(1,i)^2 t(1,i) 1]*A)*P;
    x(i) = p(1,1);
    y(i) = p(1,2);
end
plot(x, y);
