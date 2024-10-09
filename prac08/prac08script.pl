#!/usr/bin/perl

# # Initialize $var with 5
$var = 5;

# # Print the value of $var (5) and a newline
print "$var\n"; 

# Call subroutine foo
# &foo;

# Call subroutine bar (increments $var to 6)
&bar;

# Print the value of $var (6) and a newline
print $var, "\n";

# Define subroutine foo
sub foo 
{
    # Create a local copy of $var and set it to 10
    local $var = 10;
    
    # Print the local $var (10) and a newline
    print $var, "\n";
    
    # Call subroutine bar (increments local $var to 11)
    &bar;
    
    # Print the local $var (11) and a newline
    print $var, "\n";
}

# Define subroutine bar
sub bar
{
    # Increment $var by 1
    $var ++;
}