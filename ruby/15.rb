def duplicate_n(n, list)
    list.collect { |elem| [elem] * n }.reduce(:+)
end
