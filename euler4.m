clear;

% calculates the largest palindromic number which is the product of two 3
% digit numbers

lowerlim = 100;
pal = 0;

for x = 100:999
    for y = lowerlim:999
        num = x * y;
        str = int2str(num);
        if str == flip(str) & num > pal
            pal = num;
        end
    end
    lowerlim = lowerlim + 1;
end

disp(pal);
            