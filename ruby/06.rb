def palindrome?(list)
    list.each_index { |index| return false if list[index] != list[-1 - index] }
    true
end

def palindrome_2?(list)
    list.collect { |index| list[index] == list[-1 - index] }.reduce(:&)
end

def palindrome_3?(list)
    (0..list.length / 2 - 1).each { |index| return false if list[index] != list[-1 - index] }
    true
end

def palindrome_4?(list)
    (list.empty?) ? true
        : (list.first != list.last) ? false
            : palindrome_4?(list[1..-2])
end
