def decode(list)
    list.collect { |elem|
        elem.class == Array ? [elem[1]] * elem[0]
            : [elem]
    }.reduce(:+)
end
