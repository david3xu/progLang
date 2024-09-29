print "Ruby or not Ruby?\n"

# symbol: 
# symbol is a immutable and unique
# symbol is faster than string
# symbol is used for key in hash

# Arrays: 
array_1 = Array.new(3, "derek")
array_2 = ["derek", "john", "derek"]  # Changed this line
array_3 = ["derek", "john", "jane", 1, 2, 3]
puts array_1.object_id
puts array_2.object_id
puts array_3.object_id

puts array_1[0]
array_1.unshift("jane")
array_1.pop
puts array_1

# concat 
array_4 = array_1 + array_2
puts array_4

# length
puts array_4.length
puts array_4.size

# include
puts array_4.include?("derek")
puts array_4.include?("jane")

:derek
puts :derek.object_id
puts :derek.object_id
puts :derek.to_s
puts :derek.class
puts :derek.methods
puts :derek.methods.length
puts :derek.methods.include?(:to_s)
puts :derek.methods.include?("derek".to_s)  

puts "derek".object_id

# modules: can inherit multiple modules

require_relative "rubyModule/human"
require_relative "rubyModule/smart"

module Animal
  def make_sound
    puts "Animal making sound"
  end
end

class Dog
  include Animal
end

rover = Dog.new
rover.make_sound

class Scientist
  include Human
  prepend Smart # Smart module will override any methods in Human module

  def act_smart
    puts "Act smart method overridden"
  end
end

einstein = Scientist.new("Albert Einstein", 100, "male")
einstein.speak
einstein.act_smart  









# # class 
# class Animal
#   def initialize
#     puts "Animal initialized"
#   end

#   def speak
#     puts "Animal speaking"
#   end                                 

#   def set_name(new_name)
#     @name = new_name
#   end

#   def get_name
#     @name
#   end

#   def name=(new_name)
#     new_name.is_a?(String) ? @name = new_name : puts("Name must be a string")
#   end

#   # Add this method
#   def name
#     @name
#   end
# end

# cat = Animal.new

# cat.name = "Whiskers"
# cat.set_name("Socks")
# puts cat.name
# puts cat.get_name

# class Dog 
#   attr_accessor :name, :age
#   # attr_reader :name, :age
#   # attr_writer :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def bark 
#     puts "#{@name} says woof!"
#   end
# end

# dog = Dog.new("Buddy", 5)
# dog.bark
# puts dog.name
# dog.name = "Max"
# puts dog.name
# dog.age = 10
# puts dog.age

# class Cat < Animal
#   def speak
#     puts "#{@name} says meow!"
#   end
# end

# cat = Cat.new
# cat.speak

# printf "Enter your name: "
# name = gets.chomp
# puts "Hello, #{name}!"


# # create multiple strings
# first_name = "John"
# last_name = "Doe"

# full_name = first_name + " " + last_name
# puts "Full name: #{full_name}"

# middle_name = "Smith"

# full_name = first_name + " " + middle_name + " " + last_name
# puts "Full name: #{full_name}"

# puts full_name.include?("John")
# puts full_name.include?("Smith")
# puts full_name.include?("Doe")

# puts full_name.length
# puts full_name.empty?
# puts full_name.nil?

# puts "Vowels: #{full_name.count("aeiouAEIOU")}"
# puts "Consonants: #{full_name.count("^aeiouAEIOU")}"

# puts full_name.start_with?("John")
# puts full_name.end_with?("Doe")

# puts full_name.index("John")
# puts full_name.rindex("Doe")

# # start_with?
# # end_with?
# # index
# # rindex

# puts full_name.slice(0)

# puts full_name.slice(0, 3)
# puts full_name.slice(3..6)
# puts full_name.slice(3...6)

# puts full_name.slice(0..-1)
# puts full_name.slice(0...-1)

# puts "\"a\" is before \"b\" #{'a' < 'b'}"
# puts "\"a\" is before \"b\" #{'a' < 'B'}"
# puts "\"a\" is before \"b\" #{'A' < 'b'}"
# puts "\"a\" is before \"b\" #{'A' < 'B'}"

# # is equal to 
# puts "a" == "a"
# # lowercase
# puts "a".downcase == "a".downcase
# # uppercase
# puts "a".upcase == "a".upcase
# # swapcase
# puts "a".swapcase == "a".swapcase

# puts full_name.upcase
# puts full_name.downcase
# puts full_name.swapcase

# puts full_name.delete("a")

# name_array = full_name.split(" ")
# puts name_array

# puts name_array.join(" ") # join the array into a string

# puts full_name.to_i
# puts full_name.to_f   

# # lstrip 
# puts "  hello  ".lstrip
# puts full_name.rstrip
# puts full_name.strip

# puts full_name.lstrip!
# puts full_name.rstrip!
# puts full_name.strip!

# puts full_name.empty?
# puts full_name.nil?



# puts "First name: #{first_name}, Last name: #{last_name}"
# puts "First name: #{first_name}, Last name: #{last_name}"
# puts "First name: #{first_name}, Last name: #{last_name}"

# # string interpolation
# puts "Add Them #{1 + 2} \n\n"
# puts "Add Them #{1 + 2} \n\n"

# multiline_string = <<-EOM
# This is a multiline string.
# You can write as many lines as you want.
# You can use double quotes or single quotes.
# EOM

# puts multiline_string


# age = 12
# def check_age(age)
#   raise ArgumentError, "Age must be a positive number" if age < 0
#   puts "Age is valid"
# end

# begin
#   check_age(-1)
# rescue ArgumentError
#   puts "Error: Age must be a positive number"
# end

# # exception handling
# print "Enter a number: "
# num1 = gets.to_i
# print "Enter another number: "
# num2 = gets.to_i

# begin
#     puts num1 / num2
# rescue => e
#     puts "Error: #{e}"
# end

# # function
# def add_num(num1, num2)
#     return num1 + num2
# end

# puts add_num(1, 2)


# x = 1
# def change_x(x)
#     x = 2
# end

# puts change_x(x)
# puts x

# groceries = ["milk", "bread", "eggs", "cheese", "butter"]

# # each do 
# groceries.each do |item|
#     puts "Buy #{item}"
# end

# # for loops 
# for i in 1..5
#     puts i
# end

# # until loop
# x = 1
# until x > 5
#     puts x
#     x += 1
# end

# # while loop, next unless, break if

# x = 1
# while x <= 5
#     puts x
#     x += 1
# end

# # looping 
# x = 1
# loop do 
#     puts x
#     x += 1
#     break if x > 5
# end

# # turner operator
# age = 18
# puts age >= 18 ? "You are an adult" : "You are a minor"


# # gets.chomp, case, when, else, end 

# print "Enter your name: "
# greeting = gets.chomp

# case greeting
# when "Hello"
#     puts "You said Hello"
# when "Hi"
#     puts "You said Hi"
# else
#     puts "You said #{greeting}"
# end


# # unless statement
# age = 18
# unless age >= 18
#     puts "You are a minor"
# else
#     puts "You are an adult"
# end

# comparison operators
# ==
# !=
# >
# <
# >=
# <=

# logical operators
# &&
# ||
# !
# puts "5 <=> 10: #{5 <=> 10}"
# puts "10 <=> 5: #{10 <=> 5}"
# puts "5 <=> 5: #{5 <=> 5}"

# puts "true && true: #{true && true}"
# puts "true && false: #{true && false}"
# puts "false && true: #{false && true}"
# puts "false && false: #{false && false}"

# puts "true || true: #{true || true}"
# puts "true || false: #{true || false}"
# puts "false || true: #{false || true}"
# puts "false || false: #{false || false}"

# # if statement
# age = 18
# if age >= 18
#     puts "You are an adult"
# else
#     puts "You are a minor"
# end


# multi line comment
=begin
this is a multi line comment
=end

# file new
# file open
# file save
# file save as
# file close
# file exit

# write_handler = File.new("hello.txt", "w")
# write_handler.puts("Hello, World!").to_s
# write_handler.close

# # read 
# read_handler = File.open("hello.txt", "r")
# puts read_handler.read
# read_handler.close

# load 
# puts "hello ruby "

# # constants
# # constants
# PI = 3.14
# puts PI

# # variables
# x = 10
# y = 20
# puts x + y



# puts 1.class
# puts 1.0.class
# puts "1".class
# puts '1'.class



# # float 
# num1 = 10.5
# num2 = 20.5
# puts num1 + num2

# # integer
# num1 = 10
# num2 = 20
# puts num1 + num2



# enter a value
# print "Enter a value: "
# first_num = gets.to_i # convert to integer
# print "Enter another value: "
# second_num = gets.to_i # convert to integer

# puts first_num + second_num # add the two numbers