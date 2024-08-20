defmodule Prac04 do
  def main do
    data_stuff()


    # name = IO.gets("What is your name? ") |> String.trim # Get the name from the user and remove the trailing newline? character from the string
    # IO.puts("Hello, #{name}!") # Print the name back to the user

  end


  # different data types
  def data_stuff do

    # tuple
    my_status = {175, 6.25, :David}

    # access tuple
    IO.puts("Tuple: #{is_tuple(my_status)}")
    my_status2 = Tuple.append(my_status, "Hello")

    IO.puts("Age #{elem(my_status2, 3)}")

    IO.puts("Size: #{tuple_size(my_status2)}")

    my_status3 = Tuple.delete_at(my_status2, 0)

    my_status4 = Tuple.insert_at(my_status3, 0, 180)

    many_zeroes = Tuple.duplicate(0, 10)

    # pattern matching
    {weight, height, name} = {175, 6.25, "David"}
    IO.puts("Weight: #{weight}")




    # # case statement
    # age = 16
    # case age do
    #   18 -> IO.puts("You can vote")
    #   21 -> IO.puts("You can drink")
    #   _ -> IO.puts("You can't vote or drink")  # default
    # end

    # # iterate operations
    # IO.puts("Ternary: #{if age >= 18, do: "You can vote", else: "You can't vote"}")

    # # Decision making
    # age = 16
    # if age >= 18 do
    #   IO.puts("You can vote")
    # else
    #   IO.puts("You can't vote")
    # end

    # unless age === 18 do
    #   IO.puts("You can't vote")
    # else
    #   IO.puts("You can vote")
    # end

    # cond do
    #   age === 18 -> IO.puts("You can vote")
    #   age === 21 -> IO.puts("You can drink")
    #   true -> IO.puts("You can't vote or drink") # default
    # end

    # # logical operators
    # age = 20

    # if age >= 18 and age <= 21 do
    #   IO.puts("You are between 18 and 21")
    # else
    #   IO.puts("You are not between 18 and 21")
    # end

    # IO.puts("Vote & Drive: #{age >= 18 and age <= 21}")
    # IO.puts("Vote or Drive: #{age >= 18 or age <= 21}")

    # # convert interger to float
    # IO.puts(("4 == 4.0: #{4 == 4.0}"))
    # IO.puts(("4 === 4.0: #{4 === 4.0}"))
    # IO.puts(("4 != 4.0: #{4 != 4.0}"))
    # IO.puts(("4 !== 4.0: #{4 !== 4.0}"))

    # IO.puts(("5 > 4: #{5 > 4}"))
    # IO.puts(("5 >= 4: #{5 >= 4}"))
    # IO.puts(("5 < 4: #{5 < 4}"))
    # IO.puts(("5 <= 4: #{5 <= 4}"))



    # my_int = 123
    # IO.puts("Integer #{is_integer(my_int)}")
    # IO.puts("Float #{is_float(my_int)}")
    # IO.puts("Atom #{is_atom(:hello)}") # :hello is an atom
    # one_to_ten = 1..10

    # my_str = "Hello World"
    # # length of string
    # IO.puts("Length of string: #{String.length(my_str)}")
    # longer_str =  my_str <> "!" <> " is longer" # Concatenation

        # # split a string to a list
    # IO.puts("Split: #{String.split(my_str, " ")}")

    # IO.inspect(String.split(longer_str, " "))
    # IO.puts(String.reverse(longer_str))
    # IO.puts(String.upcase(longer_str))
    # IO.puts(String.downcase(longer_str))
    # IO.puts(String.capitalize(longer_str))

    # 4 * 10 |> IO.puts()
    # # equal
    # IO.puts("Equal: #{my_str == "Hello World"}")
    # # string conains
    # IO.puts("Contains: #{String.contains?(my_str, "World")}")
    # # First char
    # IO.puts("First char: #{String.at(my_str, 0)}")
    # # use first
    # IO.puts("First: #{String.first(my_str)}")
    # # index of 4\
    # IO.puts("Index of 4: #{String.at(my_str, 4)}")
    # # substring
    # IO.puts("Substring: #{String.slice(my_str, 3, 5)}") # 3 is the starting index, 5 is the length of the substring



  end
end
