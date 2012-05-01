def group(sizes, list)
    sizes.length == 1 ? [[list]]
        : list.combination(sizes.first).to_a.collect { |c|
            group(sizes[1..-1], list - c).collect { |r| [c] + r }
        }.reduce(:+)
end

if __FILE__ == $0
    p group([2, 2, 5], ["Aldo", "Beat", "Carla", "David", "Evi", "Flip", "Gary", "Hugo", "Ida"])[0]
end
