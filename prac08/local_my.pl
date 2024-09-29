use strict;
use warnings;
use feature 'say';

# Declare a package variable
our $package_var = "Original package value";

sub outer_function {
    # Declare a lexically scoped variable (only visible in this function)
    my $lexical_var = "Lexical in outer";
    
    # Create a local copy of $package_var for this function and its call stack
    local $package_var = "Local in outer";

    say "Outer function:";
    say "  Lexical: $lexical_var";  # $lexical_var is accessible here
    say "  Package: $package_var";  # Shows the local value of $package_var

    inner_function();  # Call inner function
}

sub inner_function {
    say "\nInner function:";
    # $lexical_var is not accessible here due to lexical scoping
    # say "  Lexical: $lexical_var";
    say "  Package: $package_var";  # Shows the local value from
}

# Before calling outer_function, $package_var has its original value
say "Before calling outer_function:";
say "  \$package_var: $package_var";

outer_function();

# After outer_function completes, $package_var returns to its original value
say "\nAfter calling outer_function:";
say "  \$package_var: $package_var";