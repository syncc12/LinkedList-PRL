class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @tail = nil
  end

  def add(newValue)
    if @head == nil and @tail == nil
      @head = Node.new(newValue)
      @tail = @head
    else
      node = Node.new(newValue)
      @tail.next_node = node
      @tail = node
    end

  end


  def show(node)  
      if node.next_node == nil    
        print "#{node.value}\n"   
      else
            print "#{node.value} --> "    
        show(node.next_node)  
      end 
    end


end

list = LinkedList.new
list.add(1)
list.add(2)
list.add(3)
list.show(list.head)
