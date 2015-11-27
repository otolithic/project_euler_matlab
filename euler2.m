clear;

% calculates the sum of all even fibonacci numbers less than some upper
% limit entered by the user

x = input('Enter upper limit: ');

fibPast = 1;
fibPresent = 1;
fibFuture = 0;
sum = 0;

while fibFuture < x
    fibFuture = fibPast + fibPresent;
    fibPast = fibPresent;
    fibPresent = fibFuture;
    if rem(fibFuture, 2) == 0
        sum = sum + fibFuture;
    end
end

disp(sum);