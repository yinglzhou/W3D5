class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []


    end

    def parent=(node)
        @parent = node 
        self.children << node unless @parent != nil
    end
end