require 'prime'

def goldbach(n)
    (3..n / 2).each { |a| return [a, n - a] if a.prime? && (n - a).prime? }
    nil
end
