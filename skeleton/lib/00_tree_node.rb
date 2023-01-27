class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)  
        @parent.children.delete(self) unless @parent.nil? 
        @parent = node
        node.children.push(self) unless @parent.nil?
    end

    def add_child(child)

        @parent.children.push(child)

    end

    def remove_child(child)
        

    end
end