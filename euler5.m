clear;

% Calculates the smallest number cleanly divisible by all numbers up to a
% limit entered by the user

upperlim = input('Enter an upper limit: ');
localfactors = [];
factors = [];

% multiply each number up to 20
% unless the next number is divisible by all previous numbers
% If it is divisible by some but not all previous numbers,
% multiply by the factor which has not been included

for x = 2:upperlim
    % split x into its factors
    localfactors = factor(x);
    %for each element in this list of factors...
    prevel = 0;
    for y = 1:size(localfactors)
        currel = localfactors(y);
        if currel ~= prevel
            % count the number of times that element appears both here and in
            % the big list of factors
            count = nnz(localfactors == currel);
            count2 = nnz(factors == currel);
            % if there are more of a factor in the localfactors than are
            % already listed in factors...
            if count > count2
                % add the extra number of that element to factors
                for z = 1:(count - count2)
                    factors = [factors currel];
                end
            end
        end
        prevel = currel;
    end
end

disp(prod(factors));