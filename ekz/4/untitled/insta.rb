class ExampleClass
  def initialize
    @instance_variable = 30
  end

  def print_instance_variable
    puts @instance_variable
  end
end

example_object = ExampleClass.new
example_object.print_instance_variable  # Виведе: 30
