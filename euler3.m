function lpf = euler3(x)

% calculates the largest prime factor of the number entered as an argument

lpf = x;
div = 2;
foundlpf = false;

while  and(div * div <= x, foundlpf == false)
    if rem(x, div) == 0
        if div * div == x
            lpf = euler3(div);
        else
            p1 = euler3(div);
            p2 = euler3(x / div);
            lpf = max(p1, p2);
            foundlpf = true;
        end
    else
        div = div + 1;
    end
end