%find the pythagorean triplet for which a + b + c = 1000

sum = 1000;
sides = [0 0 0];

%easy but slow and unsatisfying way:
for a = 5:500
   for b = 5:500 
       c = sqrt(a^2 + b^2);
       if a + b + c == sum
           sides = [a b c]
           break;
       end
   end    
end

solution = sides(1)*sides(2)*sides(3)

%% a much faster and marginally more satisfying way:

%A + B + C = 1000
%CC - AA - BB = 0

%(A+B+C)^2 = 1000000
%AA + 2AB + 2AC + BB + 2BC + CC = 1000000
%substitute CC = AA + BB
%2AA + 2BB + 2AB + 2AC + 2BC = 1000000
%AA + AB + BB + AC + BC = 500000
%add AB to both sides so we can factor AA + 2AB + BB:
%(A+B)^2 + AC + BC = 500000 + AB
%(A+B)^2 + C(A + B) = 500000 + AB
% factor out A + B
%(A+B)(A+B+C) = 500000 + AB
%substitute A+B+C = 1000
%1000A + 1000B = 500000 + AB
%1000A - AB + 1000B = 500000
%A(1000-B) + 1000B = 500000
%A = (500000 - 1000B)/(1000-B)
sides2 = [ 0 0 0 ];

for i = 5:500
    j = round((500000 - 1000*i)/(1000-i));
    
    k = sqrt(j^2 + i^2);
    if j + i + k == sum
        sides2 = [j i k]
        break
    end
end

solution2 = sides2(1)*sides2(2)*sides2(3)

%% something I started to try that didn't work but i wish it did

% A + B + C = 1000
% A + B     > 500
%         C < 500
%[1 1 1; 1 1 0; 0 0 1][A; B; C] = [1000; X > 500; 1000-X]
%The idea is to take the inverse of the matrix and multiply it by the right
%side vector to get A B and C for different values of X.

% This is a singular matrix though and I don't know how plugging in
% different Xs would work exactly. I guess I would run it till I got
% integer answers?

