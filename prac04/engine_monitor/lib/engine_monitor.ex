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
    latest = latest_reading(readings)
    IO.puts("Latest reading: #{latest}")

    # Add a new reading to the list
    updated_readings = add_reading(900, readings)
    IO.inspect(updated_readings, label: "Updated Readings")

    # Find the maximum reading in the list
    max = max_reading(updated_readings)
    IO.puts("Max reading: #{max}")

    # Count rising readings in the list
    rising_count = count_rising_readings(updated_readings)
    IO.puts("Rising readings: #{rising_count}")

    # Detect dangerous spikes/drops in the list
    max_change = 50
    danger = detect_dangerous_change(updated_readings, max_change)
    IO.puts("Dangerous change: #{danger}")

    # Detect the word "FIRE" in the list
    fire_detected = contains_fire?(["FIRE", "SAFE", "NORMAL"])
    IO.puts("Fire detected: #{fire_detected}")

    # Decode messages in the list
    message = decode_message("72 101 108 108 111")
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
  def latest(readings), do: List.last(readings)


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
  # When the list is not empty, update the maximum and call the function recursively
  defp max_reading([head | tail], max) when head > max, do: max_reading(tail, head)


  @doc """
  Counts the number of rising readings in the list.
  """
  def count_rising_readings([]), do: 0
  def count_rising_readings([_]), do: 0
  def count_rising_readings([head | tail]), do: count_rising_readings(tail, head, 0)

  defp count_rising_readings([], _prev, count), do: count
  defp count_rising_readings([head | tail], prev, count) when head > prev do
    count_rising_readings(tail, head, count + 1)
  end
  defp count_rising_readings([head | tail], _prev, count), do: count_rising_readings(tail, head, count)

  @doc """
  Detects dangerous spikes or drops in the list.
  """
  def detect_dangerous_change([], _max_change), do: nil
  def detect_dangerous_change([_]), do: nil
  def detect_dangerous_change([head | tail], max_change), do: detect_dangerous_change(tail, head, max_change)

  defp detect_dangerous_change([], _prev, _max_change), do: nil
  defp detect_dangerous_change([head | tail], prev, max_change) when abs(head - prev) >= max_change, do: head
  defp detect_dangerous_change([head | tail], _prev, max_change), do: detect_dangerous_change(tail, head, max_change)

  @doc """
  Checks if the word "FIRE" is present in the list.
  """
  def contains_fire?(list), do: Enum.any?(list, &(&1 == "FIRE"))

  @doc """
  Decodes a message by converting space-separated numbers to characters.
  """
  def decode_message(string) do
    string
    |> String.split()
    |> Enum.map(&String.to_integer/1)
    |> Enum.map(&<<&1>>)
    |> Enum.join("")
  end
end
