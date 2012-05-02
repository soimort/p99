and2 = Proc.new do |a, b|
    a and b
end

or2 = Proc.new do |a, b|
    a or b
end

nand = Proc.new do |a, b|
    not (a and b)
end

nor = Proc.new do |a, b|
    not (a or b)
end

xor = Proc.new do |a, b|
    (a and not b) or (not a and b)
end

impl = Proc.new do |a, b|
    not (a and not b)
end

equ = Proc.new do |a, b|
    a == b
end

def table2(func)
    print "A\tB\tresult\n"
    print "#{true}\t#{true}\t#{func.call(true, true)}\n"
    print "#{true}\t#{false}\t#{func.call(true, false)}\n"
    print "#{false}\t#{true}\t#{func.call(false, true)}\n"
    print "#{false}\t#{false}\t#{func.call(false, false)}\n"
end

if __FILE__ == $0
    table2(lambda{ |a, b| and2.call(a, or2.call(a, b)) })
end
