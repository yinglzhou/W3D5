class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent)  
        @parent.children.delete(self) unless @parent.nil? 
        @parent = new_parent
        new_parent.children.push(self) unless @parent.nil?
    end

    def add_child(child)
        child.parent=(self)
    end

    def remove_child(child)
        raise "error" if child.parent == nil
        child.parent=(nil) 
    end
end