# Polymorphism: explain how it works in Ruby
# Polymorphism allows us to use the same method name for different objects
# This is useful when we have a parent class and child classes
# We can use the same method name for all the child classes
# The method name will be the same, but the implementation will be different
# This is useful when we have a parent class and child classes
# We can use the same method name for all the child classes
# The method name will be the same, but the implementation will be different


class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end

class Parrot < Bird
  def tweet
    puts "Tweet tweet"
  end
end

class Penguin < Bird
  def tweet
    puts "Squawk squawk"
  end
end

class Duck < Bird
  def tweet
    puts "Quack quack"
  end
end

parrot = Parrot.new
penguin = Penguin.new
duck = Duck.new
bird = Bird.new
bird.tweet(parrot)
bird.tweet(penguin)
bird.tweet(duck)
