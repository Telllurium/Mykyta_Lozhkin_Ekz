# Визначення та виклик об'єкта Proc
my_proc = Proc.new { |x, y| x * y }
puts my_proc.call(5, 6)  # Результат: 30
