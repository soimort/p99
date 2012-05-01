def gcd(x, y)
    x.gcd(y)
end

def gcd_2(x, y)
    if x == 0
        y
    elsif y == 0
        x
    else
        while y > 0 do
            x > y ? (x, y = y, x % y) : (y %= x)
        end
        x
    end
end
