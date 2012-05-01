def encode_direct(list)
    encode_direct = [prev = list.first]
    list[1..-1].each { |elem|
        elem != prev ? encode_direct << prev = elem
            : encode_direct.last == elem ? encode_direct[-1] = [2, elem]
                : encode_direct.last[0] += 1
    }
    encode_direct
end
