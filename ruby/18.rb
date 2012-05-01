def slice(i, k, list)
    list[i..k - 1]
end

def slice_2(i, k, list)
    list.take(k).drop(i)
end
