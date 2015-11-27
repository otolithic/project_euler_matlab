clear;

upperlimit = input('Enter upper limit: ');

x = 1:upperlimit;

sumofsquares = sum(x.^2);
squareofsum = sum(x)^2;

if sumofsquares > squareofsum
    disp(sumofsquares - squareofsum);
elseif squareofsum > sumofsquares
    disp(squareofsum - sumofsquares);
end