# Complete

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def topNode
    return "#{self.value}"
  end
end

def print_values(list_node)
  if list_node
    #print "#{list_node.value}"
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
    print "\n"
  else
    print "nil\n"
    return
  end
end

def print_spacing(printValue)
  print "\n"
  print printValue
  print "\n"
end

def print_stack(inStack)
  #inStack.each do |i|
    print "#{inStack.data}"
    print "\n"
  #end
end
class Stack
    attr_reader :data

    def initialize
        @data = nil
    end


    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
        #print "@data = " , @data , "\n"
        #print "-------\n"
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        value = @data.value
        @data = @data.next_node
        return value
    end

end

def reverse_list(list)
    stackForward = Stack.new
    stackBackward = Stack.new

    stackCounter = 0
    while list != nil
      stackForward.push(list.value)
      list = list.next_node
      stackCounter = stackCounter + 1
    end

    stackCounter.times do |i|
      putValue = stackForward.pop
      # puts putValue
      stackBackward.push(putValue)
    end

  outNode1 = LinkedListNode.new(stackBackward.pop)
  outNode2 = LinkedListNode.new(stackBackward.pop, outNode1)
  outNode3 = LinkedListNode.new(stackBackward.pop, outNode2)

end



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# print_values(node3)

# print_spacing(node3)

# stack1 = Stack.new

# stack1.push(37)
# stack1.push(99)
# stack1.push(12)



# print_spacing(stack1.pop)
# print_spacing(stack1.pop)
# print_spacing(stack1.pop)


# print_stack(stack1)

# ########################################

# print "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

# puts revlist.class

print_values(revlist)






