require 'prime'

def prime?(n)
    n.prime?
end

def prime_?(n)
    if n == 2
        true
    elsif n <= 2 || n % 2 == 0
        false
    else
        i = 3
        while i * i <= n do
            return false if n % i == 0
            i += 2
        end
        true
    end
end
