class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def modify_node(inNode, newValue, newNext_Node)
  inNode.value = newValue
  inNode.next_node = newNext_Node
  return inNode
end

def reverse_list(list, previous=nil)
  if list
    parse_list(list, previous)
  end
end

def parse_list(list, previous)
  nNode = list.next_node
  list = modify_node(list, list.value, previous)
  reverse_list(nNode,list)
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

puts "-------"

reverse_list(node3)

print_values(node1)

puts "-------"





