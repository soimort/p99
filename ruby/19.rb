def rotate(n, list)
    list[n..-1] + list[0..n - 1]
end
