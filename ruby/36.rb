require 'prime'

def prime_factors_multiplicity(n)
    n.prime_division
end

def prime_factors_multiplicity_2(n)
    prime_factors_multiplicity = []
    i = 2
    while n >= i do
        c = 0
        while n % i == 0 do
            c += 1
            n /= i
        end
        prime_factors_multiplicity << [i, c] unless c == 0
        i += 1
    end
    prime_factors_multiplicity
end
