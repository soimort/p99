def drop(n, list)
    list.each_index.select { |index|
        index unless (index + 1) % n == 0
    }.collect { |index| list[index] }
end
