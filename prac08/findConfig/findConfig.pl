use File::Find;
find(\&wanted, "/");
sub wanted {
    if (-f $_ && /\.conf$/) {
        print "$File::Find::name\n";
    }
}