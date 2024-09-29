class Person
  attr_reader :name
  attr_writer :age
  attr_accessor :email

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
    @private_data = "This remains private"
  end

  def birthday
    @age += 1
  end

  def private_data
    @private_data
  end

  private :private_data
end

# Test code
person = Person.new("Alice", 30, "alice@example.com")

# Testing attr_reader (read-only)
puts person.name  # Output: Alice
# person.name = "Bob"  # This would raise an error

# Testing attr_writer (write-only)
person.age = 31
# puts person.age  # This would raise an error

# Testing attr_accessor (read and write)
puts person.email  # Output: alice@example.com
person.email = "newalice@example.com"
puts person.email  # Output: newalice@example.com

# Testing custom method
person.birthday
# puts person.age  # This would still raise an error because age is write-only

# Attempting to access private data
# puts person.private_data  # This would raise an error

# Demonstrating that instance variables are still private
# puts person.instance_variable_get(:@age)  # This works but is not recommended

puts "Test completed successfully!"