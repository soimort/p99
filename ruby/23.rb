def random_select(n, list)
    indices = []
    while indices.length < n
        begin
            index = rand(list.length)
        end while indices.include?(index)
        indices << index
    end
    indices.collect { |index| list[index] }
end

if __FILE__ == $0
    p random_select(3, [:a, :b, :c, :d, :e, :f, :g, :h])
end
