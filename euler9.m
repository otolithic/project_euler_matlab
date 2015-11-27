a = 1:1000;
b = 1:1000;
c = 1:1000;

[A, B] = meshgrid(a, b);

X = A + B + sqrt(A.^2 + B.^2) - 1000);

disp(X[1000 1000]);


