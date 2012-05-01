require './ruby/23.rb'

def random_permute(list)
    random_select(list.length, list)
end

if __FILE__ == $0
    p random_permute([:a, :b, :c, :d, :e, :f])
end
