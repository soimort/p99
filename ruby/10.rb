def encode(list)
    pack(list).collect { |elem| [elem.length, elem.first] }
end
