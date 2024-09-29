module Human
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def speak
    puts "Hello, my name is #{@name} and I am #{@age} years old."
  end
end
