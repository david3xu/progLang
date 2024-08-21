defmodule EngineMonitor do
  @moduledoc """
  A module for monitoring engine readings and detecting anomalies.
  """

  @doc """
  The main function to demonstrate the use of various monitoring functions.
  """
  def main do
    # Initialize the list
    readings = init_readings()
    IO.inspect(readings, label: "Initial Readings")

    # Get the latest reading
    latest = latest(readings)
    IO.puts("Latest reading: #{latest}")

    # Add a new reading to the list
    updated_readings = new_reading(900, readings)
    IO.inspect(updated_readings, label: "Updated Readings")

    # Find the maximum reading in the list
    max = max_reading(updated_readings)
    IO.puts("Max reading: #{max}")

    # Count rising readings in the list
    # rising_count = rising(updated_readings)
    rising_count = rising([901, 851, 841, 790, 800])
    IO.puts("Rising readings: #{rising_count}")

    # Detect dangerous spikes/drops in the list
    # max_change = 50
    danger = danger?(readings)
    IO.puts("Dangerous change: #{danger}")

    # Detect the word "FIRE" in the list
    fire_detected = fire?("FIRE EXTINGUISHER ACTIVE RIGHT")
    IO.puts("Fire detected: #{fire_detected}")

    # Decode messages in the list
    message = decode("HYDRAULIC ELECTRIC LOW LOAD OPTION")
    IO.puts("Decoded Message: #{message}")
  end

  @doc """
  Initializes the list of readings.
  """
  def init_readings do
    [851, 841, 800, 756, 640, 390, 201]
  end

  @doc """
  Returns the latest reading from the list. latest/1 is a guard clause.
  """
  def latest([]), do: nil
  def latest([head | tail]), do: head


  @doc """
  Adds a new reading to the start of the list.
  """
  def new_reading(reading, list), do: [reading | list]

  @doc """
  Finds the maximum reading in the list.
  """
  # Using a guard clause (add additional conditions to function defintion) to handle an empty list
  def max_reading([]), do: nil
  # When the list is not empty, it uses pattern matching to split the list into head (first element) and tail (rest of the list)
  # It then calls the max_reading/2 function with the tail and the maximum of the head and the current maximum
  def max_reading([head | tail]), do: max_reading(tail, head)

  # Private function to find the maximum reading
  # When the list is empty, it returns the current maximum
  defp max_reading([], max), do: max
  # When the list is not empty, 
  #  if 'head' is greater than 'max', update the maximum and call the function recursively
  defp max_reading([head | tail], max) when head > max, do: max_reading(tail, head)
  # if 'head' is not greater than 'max', call the function recursively without updating the maximum
  defp max_reading([_head | tail], max), do: max_reading(tail, max)



  @doc """
  Counts the number of rising readings in the list.
  """
  # If the list is empty or has only one element, there are no rising readings
  def rising([]), do: 0
  def rising([_]), do: 0

  # It uses pattern matching to split the list into head, second, and tail
  def rising([head, second | tail]), do: 
  count_rising([second | tail], head, 0)

  # Private function to count rising readings
  # When the list is empty, return the count
  defp count_rising([], _prev, count), do: count
  # When the list is not empty,
  # if the current reading is less than the previous reading, increment the count and call the function recursively
  defp count_rising([head | tail], prev, count) when head < prev do
   count_rising(tail, head, count + 1)
  end 

  # if the current reading is not less than the previous reading, call the function recursively without incrementing the count
  defp count_rising([head | tail], prev, count) do 
    count_rising(tail, head, count)
  end


  @doc """
  Detects dangerous spikes or drops in the list.
  """
  # If the list is empty or has only one element, there is no danger
  def danger?([]), do: false
  def danger?([_]), do: false

  # It uses pattern matching to split the list into head (first element) and tail (rest of the list)
  def danger?([head | tail]), do: danger?(tail, head)

  # Private function to detect dangerous spikes or drops
  # When the list is empty, there is no danger
  defp danger?([], _prev), do: false
  # When the list is not empty, 
  # if the current reading is more than 50 units away from the previous reading, there is danger
  defp danger?([head | tail], prev) when abs(head - prev) > 50, do: true
  # if the current reading is not more than 50 units away from the previous reading, call the function recursively
  defp danger?([head | tail], _prev), do: danger?(tail, head)


  @doc """
  Checks if the word "FIRE" appears in the given string.

  # pip operator is used to chain the functions
  'string |> String.upcase() |> String.contains?("FIRE")' is equivalent to 'String.contains?(String.upcase(string), "FIRE")'
  # Example 
    iex > EngineMonitor.fire?("FIRE SAFE NORMAL")
    true
  """



  def fire?(string) do
    string 
    |> String.upcase() # Convert the string to uppercase
    |> String.contains?("FIRE") # Check if the string contains "FIRE"
  end 

  @doc """
  Decodes a string by returning the first letter of each word.
  # Example
    iex > EngineMonitor.decode("HYDRAULIC FLUID LEAK")
    "HFL"
  """
  def decode(string) do
    string
    |> String.split()
    |> Enum.map(&String.first/1)
    |> Enum.join("")
  end
end
