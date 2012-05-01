def compress(list)
    compress = [prev = list.first]
    list[1..-1].each { |elem| compress << prev = elem unless elem == prev }
    compress
end
