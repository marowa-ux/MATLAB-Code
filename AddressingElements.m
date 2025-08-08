%Entering Matrices and Addressing the Elements
A = [1 2 3; 8 6 4; 3 6 9]
A(1,3) + A(2,1) + A(3,2)
A(2:3,1:2)
A(1,1:2)
A(:,2)
x = linspace(0,pi,101)
v = (10:-2:0)
w = (5:10)
B = zeros(3,4)
C = ones(2,5)*6
D = rand(1,5)
E = randn(3,3)

%Array Orientation
a = 0:3
b = a'
c = [1 2 3 4;5 6 7 8;9 10 11 12]
2*c-1

%Array-Array Mathematics
d = [1 2 3; 4 5 6]
e = [2 2 2; 3 3 3]
f = d+e
g = 2*d-e
h = d.*e
d./e
e.\d
A = [1 2 3; 4 5 6]
B = [1 2; 3 4; 5 6]
C = A * B