# Клас, що представляє посередника для координації взаємодії користувачів
class Mediator
  def send_message(sender, message)
    # Логіка розсилання повідомлення всім іншим користувачам
    # Наприклад, це може бути реалізовано шляхом ітерації по списку користувачів і виклику їхніх методів receive
  end
end

# Клас, що представляє користувача в системі чату
class User
  attr_reader :name, :mediator

  def initialize(name, mediator)
    @name = name
    @mediator = mediator
  end

  # Метод для надсилання повідомлення через посередника
  def send(message)
    mediator.send_message(self, message)
  end

  # Метод для отримання повідомлення
  def receive(message)
    puts "#{name} отримав(ла) повідомлення: #{message}"
  end
end
