use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.38.2;

print "Hello World\n";





# my $x = 10;     # lexical (my) variable
# our $y = 20;    # package (global) variable
# our $z;         # declare $z as a package variable
# local $z = 30;  # dynamically scoped variable

# sub foo {
#     my $local_x = 100;  # lexical variable, only visible in foo
#     print "Inside foo: \$x = $x, \$y = $y, \$z = $z, \$local_x = $local_x\n";
    
#     local $y = 200;  # temporarily changes the value of $y
#     $z = 300;        # modifies the local $z
    
#     bar();  # call another function to demonstrate scope
# }

# sub bar {
#     print "Inside bar: \$x = $x, \$y = $y, \$z = $z\n";
#     # Note: $local_x is not accessible here
# }

# print "Before foo: \$x = $x, \$y = $y, \$z = $z\n";
# foo();
# print "After foo: \$x = $x, \$y = $y, \$z = $z\n";

# my $global_var = 10;

# sub modify_global {
#     $global_var += 5;
#     return $global_var;
# }

# print "Before: $global_var\n";
# my $result = modify_global();
# print "After: $global_var\n";

# hash

# my %my_hash = (
#     "name" => "David",
#     "age" => 41,
#     "street" => "Kent St",
#     "city" => "Bentley",
#     "state" => "WA",
#     "zip" => "6102"
# );

# printf("Name is %s\n", $my_hash{"name"});

# while (my ($key, $value) = each %my_hash) {
#     say "$key is $value";
# }

# # use {}

# # delete

# delete $my_hash{"name"};

# # check if key exists

# if (exists $my_hash{"name"}) {
#     say "Name is exists";
# } else {          
#     say "Name is not exists";
# }

# # check if value exists

# if (exists $my_hash{"David"}) {
#     say "Name is exists";
# } else {          
#     say "Name is not exists";
# }




# # create an array with 8 numbers 

# my @numbers = (1, 2, 3, 4, 5, 6, 7, 8);
# my @my_info = ("David", "41", "Kent St", "Bentley", "WA", "6102");

# # for loop 

# for my $number (@numbers) {
#     say $number;
# }

# # use for each

# foreach my $number (@numbers) {
#     say $number;
# }

# # use index 

# my $index = 0;

# foreach my $number (@numbers) {
#     say "Index $index: $number";
#     $index++;
# }

# # use scalar 

# my $scalar = 0;

# foreach my $number (@numbers) {
#     $scalar += $number;
# }

# say "Scalar is $scalar";

# my ($name, $age, $street, $city, $state, $zip) = @my_info;

# say "Name is $name";
# say "Age is $age";
# say "Street is $street";
# say "City is $city";
# say "State is $state";
# say "Zip is $zip";

# # pop value 

# my $popped_value = pop @numbers;

# say "Popped value is $popped_value";

# say "Numbers is @numbers";

# # shift value  

# my $shifted_value = shift @numbers;

# say "Shifted value is $shifted_value";

# say "Numbers is @numbers";

# # unshift value 


# unshift @numbers, 10;

# say "Numbers is @numbers";

# # push value 

# push @numbers, 11;

# say "Numbers is @numbers";

# # pop value 

# my $popped_value = pop @numbers;

# say "Popped value is $popped_value";

# # split join

# my $numbers_string = join(", ", @numbers);

# say "Numbers string is $numbers_string";

# my @numbers_array = split(", ", $numbers_string);

# say "Numbers array is @numbers_array";

# # sort, reverse

# my @sorted_numbers = sort @numbers;

# say "Sorted numbers is @sorted_numbers";

# my @reverse_numbers = reverse @numbers;

# say "Reverse numbers is @reverse_numbers";

# # grep, map

# my @even_numbers = grep { $_ % 2 == 0 } @numbers;

# say "Even numbers is @even_numbers";

# my @squared_numbers = map { $_ * $_ } @numbers;

# say "Squared numbers is @squared_numbers";

# # grep, map with condition

# my @even_numbers = grep { $_ % 2 == 0 } @numbers;

# say "Even numbers is @even_numbers";















# # join, split

# my @names = ("David", "John", "Jane", "Doe");

# my $names_string = join(", ", @names);

# say $names_string;

# my @names_array = split(", ", $names_string);

# say "@names_array";










# # take space, replace with ,
# my $name = "David is a adult";

# $name =~ s/ /,/g;

# say $name;

# upcase, downcase, lc, uc, lcfirst, ucfirst

# my $name = "David";

# say "Uppercase name: ", uc($name);

# say "Lowercase name: ", lc($name);








# my $long_string = "This is a long string";

# say "Length of long_string is ", length($long_string);

# printf("Length of long_string is %d\n", length($long_string));

# printf("Last g is at %d\n", index($long_string, "g"));

# printf("Last g is at %d\n", rindex($long_string, "g"));

# my $sub_string = substr($long_string, 0, 5);

# say $sub_string;

# $long_string = $long_string . " and this is the end";

# say "Index 7 through 10 is ", substr($long_string, 7, 10);

# say "Index 7 through 10 is ", substr($long_string, 7, 10);

# my $animal = "animals";

# say "The first character is ", substr($animal, 0, 1);

# say "The last character is ", substr($animal, -1);

# say "The last character is ", substr($animal, -1);

# printf("Last character is %s\n", chop($animal));

# printf("Last character is %s\n", chop($animal));












# my $gage_old = 18;

# given ($gage_old) {
#     when ($_ < 18) {
#         say "You are a minor";
#     }
#     when ($_ >= 18) {
#         say "You are an adult";
#     }
#     default {
#         say "You are not a human";
#     }
# }
# my $i = 1;

# my $lucy_num = 7;

# my $guess;

# do {
#   print "Enter a number between 1 and 10: ";
#   $guess = <STDIN>; # get input from user
#   chomp $guess; # remove the newline character  
# } until ($guess == $lucy_num);  # repeat the loop until the guess is equal to the lucy_num

# say "You guessed it!";

# while ($i < 10) {
#   if ($i == 5) {
#     last;
#   }             
#   say $i;
#   $i++;
# }

# for (my $i = 0; $i < 10; $i++) {
#   say $i;
# }



# if('a' eq 'b') {
#   say "a is equal to b";  
# } else {
#   say "a is not equal to b";
# }

# unless ('a' eq 'b') {
#   say "a is not equal to b";
# } else {
#   say "a is equal to b";
# }

# my $age = 20;  # Declare and initialize $age
# say (( $age > 18) ? "You are an adult" : "You are a minor");

# # boolean operators
# my $x = 1;
# my $y = 2;

# say "x = $x, y = $y";

# say "x == y = ", $x == $y;
# say "x != y = ", $x != $y;

# my $age = 41;
# my $is_not_intoxicated = 1;
# my $age_last_exam = 10;

# if ($age < 16) {
#   say "You are too young to drive";
# } elsif ($age >= 16 and $is_not_intoxicated == 1) {
#   say "You can drive";
# } elsif ($age >= 16 and $is_not_intoxicated == 0) {
#   say "You can drive but you are intoxicated";
# } else {
#   say "You are too young to drive";
# }

# if (($age >= 1) && ($age_last_exam >= 10)) {
#   say "You can drive";
# } else {
#   say "You cannot drive";
# }


# # sign operators
# my $rand_num = 5;
# $rand_num++;
# $rand_num += 1;
# $rand_num = $rand_num + 1;

# say "Number is $rand_num";

# say "6++ = ", $rand_num++;
# say "++6 = ", ++$rand_num;
# say "--6 = ", --$rand_num;
# say "6-- = ", $rand_num--;

# say "3 + 2 * 5 = ", 3 + 2 * 5;
# say "(3 + 2) * 5 = ", (3 + 2) * 5;

# # math functions
# say "5 + 4 = ", 5 + 4;
# say "5 - 4 = ", 5 - 4;
# say "5 * 4 = ", 5 * 4;
# say "5 / 4 = ", 5 / 4;
# say "5 % 4 = ", 5 % 4;
# say "5 ** 4 = ", 5 ** 4;

# say "EXP 1 = ", exp 1;
# say "LOG 1 = ", log 1;
# say "SQRT 1 = ", sqrt 1;

# say "int 1.2345 = ", int 1.2345;
# say "int 1.9999 = ", int 1.9999;

# say "rand 1 = ", rand 1;
# say "rand 1 = ", rand 1;

# # Replace the max and min lines with these:
# my @numbers = (1, 2, 3, 4, 5);
# say "max of (1, 2, 3, 4, 5) = ", (sort { $b <=> $a } @numbers)[0];
# say "min of (1, 2, 3, 4, 5) = ", (sort { $a <=> $b } @numbers)[0];

# say "int 1.2345 = ", int 1.2345;
# say "int 1.9999 = ", int 1.9999;


















# my $name = "David";

# my ($age, $street, $city, $state, $zip) = (41, "Kent St", "Bentley", "WA", "6102");

# my $my_info = "$name lives on \"$street\"\n";

# $my_info = qq{$name lives on "$street"\n};

# print $my_info;

# my $bunch_on_info = <<"END";
# This is a 
# bunch of information
# on multiple lines
# END

# say $bunch_on_info;

# my $big_int = 12345678901234567890;

# # %C Character
# # %s String
# # %d Integer
# # %f Floating point number
# # %o Octal
# # %x Hexadecimal
# # %e Exponential
# # %g General
# # %p Pointer
# # %n Number of characters output
# # %\% Percent sign
# # %m Format name
# # %* Name
# # %% Literal %

# printf("%u \n", $big_int+1);
# my $big_float = 12345678901234567890.12345678901234567890;

# printf("%f \n", $big_float);

# my $first = 1;
# my $second = 2;

# ($first, $second) = ($second, $first);

# say "$first $second";


