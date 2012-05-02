class BinaryTree
    attr_accessor :root, :left, :right
    
    def initialize(root = nil, left = nil, right = nil)
        @root = root
        @left = left; @right = right
    end
end

def huffman(list)
    trees = list.collect { |elem| BinaryTree.new(elem)}
    
    while trees.length > 1 do
        m1 = trees.min_by { |tree| tree.root[1] }
        m2 = (trees - [m1]).min_by { |tree| tree.root[1] }
        m = BinaryTree.new([nil, m1.root[1] + m2.root[1]], m1, m2)
        trees.delete(m1); trees.delete(m2)
        trees << m
    end
    
    result_list = []
    def traversal(node, code, result_list)
        if !node.nil?
            if !node.root[0].nil?
                result_list << [node.root[0], code]
            else
                traversal(node.left, code + "0", result_list)
                traversal(node.right, code + "1", result_list)
            end
        end
    end
    traversal(trees[0], "", result_list)
    result_list
end

if __FILE__ == $0
    p huffman([["a", 45], ["b", 13], ["c", 12], ["d", 16], ["e", 9], ["f", 5]])
end
