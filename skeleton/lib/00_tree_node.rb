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

    def bfs(node, target)
        # queue = [node]

        # if queue.shift == target
        #     return queue.shift
        # else
        #     queue << queue.shift.children

        # end
        found? = false
        queue = [node]

        while(found? == false)

      

        queue[0].children.each do |child|
        
            if child != target
                queue.shift!; queue.push(child)
                found == false 
            end


        end
        




    end
end