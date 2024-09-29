sub make_noise {
    my $animal = shift;
    if (ref($animal) && $animal->can('speak')) {
        $animal->speak();
    } else {
        print "This animal can't speak\n";
    }
}

package Duck {
    sub new { bless {}, shift }
    sub speak { print "Quack!\n" }
}

package Dog {
    sub new { bless {}, shift }
    sub speak { print "Woof!\n" }
}

package Fish {
    sub new { bless {}, shift }
    sub swim { print "Swim swim\n" }
}

my $duck = Duck->new();
my $dog = Dog->new();
my $fish = Fish->new();

make_noise($duck);  # Output: Quack!
make_noise($dog);   # Output: Woof!
make_noise($fish);  # Output: This animal can't speak

