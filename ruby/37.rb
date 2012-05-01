require 'prime'

def totient_improved(n)
    pm = n.prime_division
    pm.collect { |elem| elem[0] - 1 }.reduce(:*) *
        pm.collect { |elem| elem[0] ** (elem[1] - 1) }.reduce(:*)
end
