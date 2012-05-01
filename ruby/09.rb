def pack(list)
    pack = [[prev = list.first]]
    list[1..-1].each { |elem|
        elem == prev ? pack.last << elem
            : pack << [prev = elem]
    }
    pack
end
