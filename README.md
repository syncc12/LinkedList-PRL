# LinkedList-PRL

##Purpose:<br>
This project contains two functions to reverse linked lists.  The first function uses a stack class to reverse the linked list, and the second uses mutation.

##Overview:<br>

###What is a Linked List?<br>
A linked list is a datatype that consists of a series of nodes that contains both its own value, and the value of the next node.  These two values in each node are then used to determine the order the list, as no other means of determining the order the list exist.  If a new value needs to be added somewhere in the center of the list, all that would need to happen would be to make the reference value in the new node to the reference value in the previous node, and to change the reference value in the previous node to the value in the new node.

###Stack:<br>
For the first function, a stack class is used to reverse the linked list.  The stack class operates under the principle of last in, first out.  The nodes of the linked list are added in order to the stack.  After all of the nodes have been added, the linked list is rebuilt using the values in the stack in the order that they can be removed.

##Mutation:<br>
The second function uses mutation to reverse the linked list.  Mutation takes advantage of the way that linked lists are ordered, with each node containing its own value and the value of the next node, to accomplish this task.  This mutation function changes the reference value of each node to the value of the previous node, thus reversing the list.


