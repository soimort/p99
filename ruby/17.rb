def split(n, list)
    [list[0..n - 1], list[n..-1]]
end

def split_2(n, list)
    [list.take(n), list.drop(n)]
end
