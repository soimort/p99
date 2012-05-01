def duplicate(list)
    list.collect { |elem| [elem] * 2 }.reduce(:+)
end
