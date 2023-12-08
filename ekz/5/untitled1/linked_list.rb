# Клас, який представляє вузол у пов'язаному списку.
class UniqueNode
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

# Клас, який представляє унікальний пов'язаний список.
class UniqueLinkedList
  attr_accessor :start

  def initialize
    @start = nil
  end

  # Метод для додавання нового вузла зі значенням в кінець списку.
  def add_node(value)
    new_node = UniqueNode.new(value)
    if @start.nil?
      @start = new_node
    else
      current_node = @start
      current_node = current_node.next_node while current_node.next_node
      current_node.next_node = new_node
    end
  end

  # Метод для додавання нового вузла зі значенням на початок списку.
  def insert_at_start(value)
    new_node = UniqueNode.new(value)
    new_node.next_node = @start
    @start = new_node
  end

  # Метод для виведення значень всіх вузлів у списку.
  def display_nodes
    current_node = @start
    while current_node
      puts current_node.value
      current_node = current_node.next_node
    end
  end
end
