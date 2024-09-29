import csv

def print_header(file_name):
    """Prints the header row from a .csv file."""
    with open(file_name, 'r') as f:
        reader = csv.reader(f)
        headers = next(reader)  # Get the first (header) row
        print(headers)

def print_contents(file_name):
    """Prints the contents of a .csv file, skipping the header row."""
    with open(file_name, 'r') as f:
        reader = csv.reader(f)
        next(reader)  # Skip the header row
        for row in reader:
            print(row)

# Example usage
print_header('headerContent.csv')
print('\n')
print_contents('headerContent.csv')