def reverse(list)
    list.reverse
end

def reverse_2(list)
    reverse = []
    list.each { |elem| reverse = [elem] + reverse }
    reverse
end
