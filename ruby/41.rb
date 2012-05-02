require 'prime'
require './ruby/40'

def print_goldbach_list(a, b)
    (a..b).each { |n|
        g = goldbach(n)
        printf "#{n} = #{g[0]} + #{g[1]}\n" if g != nil
    }
end

def print_goldbach_list_limited(a, b, min_val)
    (a..b).each { |n|
        g = goldbach(n)
        printf "#{n} = #{g[0]} + #{g[1]}\n" if g != nil && g[0] > min_val
}
end

if __FILE__ == $0
    print_goldbach_list(9, 20)
    print_goldbach_list_limited(1, 2000, 50)
end
