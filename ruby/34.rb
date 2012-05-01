def totient(m)
    (1..m).count { |r| m.gcd(r) == 1 }
end
