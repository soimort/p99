require './ruby/46'

def table(n, func)
    (0..2 ** n - 1).each do |i|
        bits = i.to_s(2)
        m = [true] * (n - bits.length) + bits.chars.to_a.collect { |b| b == "0" }
        m.each do { |elem| print "#{elem}\t" }
        print "#{func[m]}\n"
    end
end

if __FILE__ == $0
    table(3, lambda{ |par| (par[0] && (par[1] || par[2])) == (par[0] && par[1] || par[0] && par[2]) })
end
