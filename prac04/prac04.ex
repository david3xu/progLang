defmodule Prac04 do
  def main do
    data_stuff()


    # name = IO.gets("What is your name? ") |> String.trim # Get the name from the user and remove the trailing newline? character from the string
    # IO.puts("Hello, #{name}!") # Print the name back to the user

  end


  # different data types
  def data_stuff do

    # concurrency: run multiple processes at the same time
    spawn(fn -> loop(5, 1) end)
    spawn(fn -> loop(50, 10) end)

    # send message to process
    send(self(), {:msg, "Hello World"})
    receive do
      {:msg, msg} -> IO.puts("Received: #{msg}")
      {:other, msg} -> IO.puts("Received: #{msg}")

    after
      500 -> IO.puts("No message received after 5 seconds")
    end




    # # exception handling
    # err = try do
    #   5 / 0
    # rescue
    #   ArithmeticError -> "You can't divide by zero"
    # end

    # IO.puts("Error: #{err}")

    # # lists comprehension
    # dbl_list = for n <- [1, 2, 3, 4], do: n * 2
    # IO.inspect(dbl_list)

    # even_list = for n <- [1, 2, 3, 4], rem(n, 2) == 0, do: n
    # IO.inspect(even_list)




    # # inumerable
    # IO.puts("Enum: #{Enum.all?([1, 2, 3, 4], fn(n) -> rem(n, 2) == 0 end)}")
    # IO.puts("Enum: #{Enum.any?([1, 2, 3, 4], fn(n) -> rem(n, 2) == 0 end)}")
    # Enum.each([1, 2, 3, 4], fn(n) -> IO.puts(n) end)

    # # double list
    # dbl_list = Enum.map([1, 2, 3, 4], fn(n) -> n * 2 end)
    # IO.inspect(dbl_list)
    # # reduce done to a single value
    # sum_vals = Enum.reduce([1, 2, 3, 4], 0, fn(n, sum) -> n + sum end)
    # IO.puts("Sum: #{sum_vals}")

    # # unique values
    # unique_vals = Enum.uniq([1, 2, 3, 4, 4, 4, 5, 6])
    # IO.inspect(unique_vals)

    # # recursion
    # IO.puts("Sum: #{sum_list([1, 2, 3, 4, 5])}")

    # # loop
    # loop(5, 1)

    # # recursion
    # IO.puts("Factorial: #{factorial(5)}")

    # # anonymous function: no name and can be assigned to a variable
    # get_sum = fn a, b -> a + b end
    # IO.puts("Sum: #{get_sum.(5, 10)}")

    # get_less = &(&1 - &2)
    # IO.puts("Less: #{get_less.(10, 5)}")

    # add_sum = fn a, b -> IO.puts("Sum: #{a + b}") end
    # add_sum.(5, 10)

    # IO.puts(do_it())




    # # pattern matching
    # {weight, height, name} = {175, 6.25, "David"}
    # IO.puts("Weight: #{weight}")

    # [_, _, []] = []

    # # # map
    # capitals = %{"United States" => "Washington", "France" => "Paris", "England" => "London"}

    # IO.puts("Map: #{Map.get(capitals, "France")}")

    # # # update map
    # capitals2 = Map.put(capitals, "Germany", "Berlin")




    # # list
    # list1 = [1, 2, 3, 4, 5]
    # list2 = [6, 7, 8, 9, 10]

    # list3 = list1 ++ list2

    # list4 = list3 -- list1

    # IO.puts(6 in list4)

    # [head | tail] = list3

    # IO.puts("Head: #{head}")

    # IO.write("Tail: ")
    # IO.inspect(tail)

    # IO.inspect([97, 98])
    # IO.inspect([97,98], charlists: false)

    # Enum.each(tail, fn item -> IO.puts("Item: #{item}") end)

    # # create words list 5
    # words = ["Hello", "World", "David", "Elixir", "Phoenix"]
    # Enum.each(words, fn word -> IO.puts("Word: #{word}") end)

    # # recursive function
    # display_list(words)

    # IO.puts(display_list(List.delete(words, "David")))
    # IO.puts(display_list(List.delete_at(words, 2)))
    # # insert
    # IO.puts(display_list(List.insert_at(words, 2, "Phoenix")))
    # # first
    # IO.puts(display_list(List.first(words)))
    # IO.puts(List.last(words))

    # # create 2 value tuple
    # my_status =  [name: "David", age: 25]


    # # tuple
    # my_status = {175, 6.25, :David}

    # # access tuple
    # IO.puts("Tuple: #{is_tuple(my_status)}")
    # my_status2 = Tuple.append(my_status, "Hello")

    # IO.puts("Age #{elem(my_status2, 3)}")

    # IO.puts("Size: #{tuple_size(my_status2)}")

    # my_status3 = Tuple.delete_at(my_status2, 0)

    # my_status4 = Tuple.insert_at(my_status3, 0, 180)

    # many_zeroes = Tuple.duplicate(0, 10)

    # # pattern matching
    # {weight, height, name} = {175, 6.25, "David"}
    # IO.puts("Weight: #{weight}")




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

  def loop(0, _), do: nil  # acc is the accumulator: the value that is passed to the next iteration

  def loop(max, min) do
    if max < min do
      loop(0, min)
    else
      IO.puts("Max: #{max}")
      loop(max - 1, min)
    end
  end

  def sum_list([head | tail]) do
    head + sum_list(tail)
  end

  def sum_list([]) do
    0
  end

  def factorial(n) do
    if n <= 1 do
      1
    else
      result = n * factorial(n - 1)
      result
    end
  end

  def do_it(x \\ 1, y \\1 ) do # default values
    x + y
  end

  def display_list([head | tail]) do
    IO.puts(head)
    display_list(tail)
  end
  def display_list([]) do
    nil
  end
end
