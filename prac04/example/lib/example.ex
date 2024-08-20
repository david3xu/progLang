defmodule  Membership  do
  defstruct [:type, :price]
end

defmodule User do
  defstruct [:name, :membership]
end

defmodule Example do
  use Application
  # alias UUID

  # @x 5 # @ is a module attribute, it is a constant
  def start(_type, _args) do # _ means we don't care about the value
    # code
    # IO.puts(Example.hello())
    # IO.puts(UUID.uuid4())
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one) # Supervisor is a process that supervises other processes, [] is the list of children processes, strategy: :one_for_one means if one child process dies, only that child process is restarted
  end

  def sum_and_avg(numbers) do
    sum = Enum.sum(numbers)
    avg = sum / length(numbers)
    {sum, avg}
  end

  def print_numbers(numbers) do
    # Enum.each(numbers, fn n -> IO.puts(n) end)
    numbers |> Enum.join(" ") |> IO.puts()
  end

  def get_numbers_from_user do
    IO.puts("Enter a list of numbers separated by commas: ")
    IO.gets("") |> String.split(",") |> Enum.map(&String.trim/1) |> Enum.map(&String.to_integer/1)
  end

  def main do
    numbers = get_numbers_from_user()
    # results = Enum.map(numbers, &String.to_integer/1)
    # print_numbers(results)
    IO.inspect(sum_and_avg(numbers))
    { sum, avg } = sum_and_avg(numbers)
    IO.puts("Sum: #{sum}, Avg: #{avg}")       # 1 + 2 + 3 + 4 + 5 = 15, 15 / 5 = 3



    # # numbers: a list of integers: string format
    # numbers = ["1", "2", "3", "4", "5"]
    # result = Enum.map(numbers, &String.to_integer/1)
    # IO.inspect(result)
    # print_numbers(result)
    # {sum, avg} = sum_and_avg(result)
    # IO.puts("Sum: #{sum}, Avg: #{avg}") # Sum: 15, Avg: 3                 # 1 + 2 + 3 + 4 + 5 = 15, 15 / 5 = 3
    # IO.inspect(sum_and_avg(result)) # {15, 3}                              # 1 + 2 + 3 + 4 + 5 = 15, 15 / 5 = 3

    # numbers = [1, 2, 3, 4, 5]
    # Enum.each(numbers, fn n -> IO.puts(n) end)




    # grades = [10, 20, 30, 40, 50]

    # new = for n <- grades, do: n * 2

    # IO.inspect(new)           # [20, 40, 60, 80, 100]
    # new = new ++ [60, 70, 80]
    # IO.inspect(new)           # [20, 40, 60, 80, 100, 60, 70, 80]

    # even = for n <- new, rem(n, 2) == 0, do: n
    # IO.inspect(even)          # [20, 40, 60, 80, 100, 60, 70, 80] -> [20, 40, 60, 80, 100, 60, 80]




    # # correct = 8
    # correct = :rand.uniform(10)
    # IO.puts(correct)
    # # correct = :rand.uniform(1...10)
    # guess = IO.gets("Guess a number between 1 and 10: ") |> String.trim() |> String.to_integer()
    # # IO.puts("You guessed: #{guess}, the correct number is: #{correct}")
    # # case guess do
    # #   ^correct -> IO.puts("You guessed correctly!")
    # #   _ -> IO.puts("You guessed incorrectly!")
    # # end

    # IO.inspect(guess)

    # case guess do
    #   {result, _} ->
    #     IO.puts("parse successful: #{result}")

    #     if result == correct do
    #       IO.puts("You guessed correctly!")
    #     else
    #       IO.puts("You guessed incorrectly!")
    #     end
    #   :error ->
    #     IO.puts("parse failed")
    # end

    # case guess do
    #   {result, ""} -> IO.puts("parse successful: #{result}")
    #   {result, rest} -> IO.puts("parse successful: #{result}, but there are extra characters: #{rest}")
    #   :error -> IO.puts("parse failed")
    # end
    # if guess == correct do
    #   IO.puts("You guessed correctly!")
    # else
    #   IO.puts("You guessed incorrectly!")
    # end


    # gold_membership = %Membership{type: :gold, price: 10}
    # silver_membership = %Membership{type: :silver, price: 20}
    # bronze_membership = %Membership{type: :bronze, price: 30}
    # none_membership = %Membership{type: :none, price: 0}

    # users = [
    #   %User{name: "John", membership: gold_membership},
    #   %User{name: "Jane", membership: silver_membership},
    #   %User{name: "Jack", membership: bronze_membership},
    #   %User{name: "Jill", membership: none_membership}
    # ]

    # Enum.each(users, fn user ->
    #   IO.puts("#{user.name} has a #{user.membership.type} membership. paying #{user.membership.price}")
    # end)

    # memberships = %{
    #   gold: :gold,
    #   silver: :silver,
    #   bronze: :bronze,
    #   none: :none
    # }

    # prices = %{
    #   gold: 10,
    #   silver: 20,
    #   bronze: 30,
    #   none: 0
    # }

    # users = [
    #   {"John", memberships.gold},
    #   {"Jane", memberships.silver},
    #   {"Jack", memberships.bronze}
    # ]

    # Enum.each(users, fn {name, membership} ->
    #   IO.puts("#{name} has a #{membership} membership. paying #{prices[membership]}")
    # end)


    # memberships = {:gold, :silver}
    # memberships = Tuple.append(memberships, :bronze)
    # IO.inspect(memberships)

    # prices = {10, 20, 30}
    # avg = Tuple.sum(prices) / tuple_size(prices)
    # IO.inspect(avg)

    # IO.puts(
    #   "Average price from #{elem(memberships, 0)} #{elem(memberships, 1)} and #{elem(memberships, 2)} is #{avg}"
    # )

    # users = [
    #   {"John", :gold},
    #   {"Jane", :silver},
    #   {"Jack", :bronze}
    # ]

    # Enum.each(users, fn {name, membership} ->
    #   IO.puts("#{name} has a #{membership} membership.")
    # end)

    # user1 = {"John", :gold}
    # {name, membership} = user1
    # IO.puts("#{name} has a #{membership} membership.")
    # user2 = {"Jane", :silver}
    # {name, membership} = user2
    # IO.puts("#{name} has a #{membership} membership.")
    # user3 = {"Jack", :bronze}
    # {name, membership} = user3
    # IO.puts("#{name} has a #{membership} membership.")



    # time = Time.new!(16, 30, 0, 0)
    # date = Date.new!(2021, 12, 25)
    # date_time = DateTime.new!(date, time, "Etc/UTC")
    # IO.inspect(time)
    # IO.inspect(date)
    # IO.inspect(date_time)

    # IO.puts(Integer.gcd(10, 5))

    # IO.puts(Float.ceil(0.5, 1))

    # a = 10
    # b = 5
    # :io.format("~.20f\n", [0.1])
    # IO.puts(a / b)

    # IO.puts(?a) # ?a is a character
    # IO.puts("This\nis\na\nmultiline\nstring.")
    # IO.puts("This is a string with an escape sequence: \"")
    # IO.puts("This is a string looks like \#{}")


    # x = 10
    # IO.puts(x)
    # IO.puts(@x)
    # IO.puts(:hello) # :hello is an atom, it is a constant, atom: a constant whose name is its own value
    # IO.puts("hello") # "hello" is a string, it is a constant

    # name = "John"
    # # status = :gold
    # # status = :silver
    # status = Enum.random([:gold, :silver, :bronze])



    # case status do
    #   :gold -> IO.puts("Hello, #{name}! You are a gold member.")
    #   :"not a gold member" -> IO.puts("Hello, #{name}! You are not a gold member.")
    #   _ -> IO.puts("Get out of here!")
    # end

    # if status == :gold do
    #   IO.puts("Hello, #{name}! You are a gold member.")
    # else
    #   IO.puts("Hello, #{name}! You are not a gold member.")
    # end
   end
end

# mix run
