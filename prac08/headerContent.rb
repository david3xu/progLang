require 'csv'

def print_header(file_name)
  """Prints the header row from a .csv file."""
  CSV.foreach(file_name) do |row|
    puts row.inspect  # Use inspect to print the array as a string
    break  # Only print the first row (header)
  end
end

def print_contents(file_name)
  """Prints the contents of a .csv file, skipping the header row."""
  first_row = true
  CSV.foreach(file_name) do |row|
    if first_row
      first_row = false
      next
    end
    puts row.inspect  # Use inspect to print the array as a string
  end
end

# Example usage
print_header('headerContent.csv')
puts
print_contents('headerContent.csv')