% Find the sum of all the multiples of 3 or 5 below 1000
clear;
x = input('Enter upper limit: ')
sum = sum(3:3:x) + sum(5:5:x) - sum(15:15:x);

disp(sum)

%sum2 = 0;
%for i = 1:1000
%    if (rem(i,3) == 0 | rem(i,5) == 0)
%        sum2 = sum2 + i;
%    end
%end
%disp(sum2)