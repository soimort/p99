def encode_modified(list)
    pack(list).collect { |elem|
        elem.length == 1 ? elem.first
            : [elem.length, elem.first]
    }
end
