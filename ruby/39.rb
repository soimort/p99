require 'prime'

def list_primes_in_range(a, b)
    list_primes_in_range = []
    Prime.each(b) do |prime|
        list_primes_in_range << prime if prime >= a
    end
    list_primes_in_range
end
