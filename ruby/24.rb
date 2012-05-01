require './ruby/23.rb'

def lotto(n, m)
    random_select(n, (1..m).to_a)
end

if __FILE__ == $0
    p lotto(6, 49)
end
