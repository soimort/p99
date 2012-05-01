require 'prime'

def prime_factors(n)
    n.prime_division.collect { |elem| [elem[0]] * elem[1] }.reduce(:+)
end

def prime_factors_2(n)
    prime_factors = []
    i = 2
    while n >= i do
        while n % i == 0 do
            prime_factors << i
            n /= i
        end
        i += 1
    end
    prime_factors
end
