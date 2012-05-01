def flatten(list)
    list.flatten
end

def flatten_2(list)
    flatten = []
    list.each { |elem|
        elem.class == Array ? flatten += flatten_2(elem)
            : flatten << elem
    }
    flatten
end
