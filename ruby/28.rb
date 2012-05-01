def lsort(list)
    list.sort { |x, y| x.length <=> y.length }
end

def lfsort(list)
    list.sort { |x, y|
        list.count { |elem| elem.length == x.length } <=>
        list.count { |elem| elem.length == y.length }
    }
end
