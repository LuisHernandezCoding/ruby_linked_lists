require_relative 'node'

# LinkedList class, which will represent the full list.
class LinkedList
  # #head returns the first node in the list
  # #tail returns the last node in the list
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  # #append(value) adds a new node containing value to the end of the list
  def append(value)
    new_node = Node.new(value)
    @head = new_node if @head.nil?
    @tail.next_node = new_node unless @tail.nil?
    @tail = new_node
  end

  # #prepend(value) adds a new node containing value to the start of the list
  def prepend(value)
    return @head = Node.new(value) if @head.nil?

    @head = Node.new(value, @head)
  end

  # #size returns the total number of nodes in the list
  def size
    if @head.nil?
      0
    else
      current = @head
      count = 1
      count += 1 until (current = current.next_node).nil?
      count
    end
  end

  # #at(index) returns the node at the given index
  def at(index)
    return nil if @head.nil?

    current = @head
    index.times { current = current.next_node }
    current
  end

  # #pop removes the last element from the list
  def pop
    return nil if @head.nil?

    current = @head
    current = current.next_node until current.next_node == @tail
    current.next_node = nil
    @tail = current
  end

  # #contains?(value) returns true if the passed in value is
  # in the list and otherwise returns false.
  def contains?(value)
    return false if @head.nil?

    current = @head
    return true if current.value == value

    until (current = current.next_node).nil?
      return true if current.value == value
    end
    false
  end

  # #find(value) returns the index of the node containing value, or nil if not found.
  def find(value)
    return nil if @head.nil?

    current = @head
    index = 0
    return index if current.value == value

    until (current = current.next_node).nil?
      index += 1
      return index if current.value == value
    end
  end

  # #to_s represent your LinkedList objects as strings,
  # so you can print them out and preview them in the console.
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s(node = @head)
    return 'nil' if node.nil?

    " ( #{node.value} ) -> #{to_s(node.next_node)}"
  end

  # Extra Credit
  # Extra Credit Tip: When you insert or remove a node,
  # consider how it will affect the existing nodes.
  # Some of the nodes will need their #next_node link updated.
  # #insert_at(value, index) that inserts a new node with the provided value at the given index.
  def insert_at(value, index)
    return nil if @head.nil?

    current = @head
    (index - 1).times { current = current.next_node }
    current.next_node = Node.new(value, current.next_node)
  end

  # #remove_at(index) that removes the node at the given index.
  def remove_at(index)
    return nil if @head.nil?

    current = @head
    (index - 1).times { current = current.next_node }
    current.next_node = current.next_node.next_node
  end
end
