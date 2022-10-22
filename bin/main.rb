require_relative '../lib/linked_lists'
require_relative '../lib/node'

system 'clear' or system 'cls'
puts '=> Starting linked lists'
puts '=> Creating a new linked list'
list = LinkedList.new
puts '=> displaying the list as a string'
p list.to_s
puts"Appending first node with value 'First'"
list.append('First')
puts"Appending second node with value 'Second'"
list.append('Second')
puts"Prepending third node with value 'Last'"
list.prepend('Last')
puts '=> displaying the list as a string'
p list.to_s
puts '=> ------------------'
puts '=> displaying the list size'
p list.size
puts '=> returning the first node'
p list.head.value
puts '=> returning the last node'
p list.tail.value
puts '=> returning the node at index 1'
p list.at(1).value
puts '=> returning the node at index 2'
p list.at(2).value
puts '=> removing the last node'
list.pop
puts '=> displaying the list as a string'
p list.to_s
puts '=> ------------------'
puts '=> checking if the list contains "First"'
p list.contains?('First')
puts '=> checking if the list contains "Second"'
p list.contains?('Second')
puts '=> checking if the list contains "Last"'
p list.contains?('Last')
puts '=> ------------------'
puts '=> finding the index of "First"'
p list.find('First')
puts '=> finding the index of "Second"'
p list.find('Second')
puts '=> finding the index of "Last"'
p list.find('Last')
puts '=> ------------------'
puts '=> converting the list to a string'
p list.to_s
puts '=> ------------------'
puts '=> inserting a new node with value "Anoter" at index 1'
list.insert_at('Anoter', 1)
puts '=> displaying the list as a string'
p list.to_s
puts '=> ------------------'
puts '=> removing the node at index 1'
list.remove_at(1)
puts '=> displaying the list as a string'
p list.to_s
puts '=> ------------------'
puts '=> Execution finished'
