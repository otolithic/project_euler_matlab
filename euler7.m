x = 1;
p = 0;
while p < 10001
    x = x + 1;
    if size(factor(x)) == 1
        p = p+1;
    end
end

disp(x);