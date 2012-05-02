def gray(n)
    g = ["0" * n]
    (1..2 ** n - 1).each do |i|
        t = g[-1].clone
        if i % 2 == 1
            t[-1] == "0" ? (t[-1] = "1") : (t[-1] = "0")
        else
            s = -1
            s -= 1 while t[s] == "0"
            t[s - 1] == "0" ? (t[s - 1] = "1") : (t[s - 1] = "0")
        end
        g << t
    end
    g
end

if __FILE__ == $0
    p gray(1)
    p gray(2)
    p gray(3)
    p gray(4)
end
