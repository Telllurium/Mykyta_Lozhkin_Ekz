# Використання блоку в методі
def execute(&block)
  block.call
end

execute { puts "Це блок!" }
