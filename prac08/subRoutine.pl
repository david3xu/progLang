sub search_file {
    my ($filename, $search_term) = @_;
    
    # Open the file in read mode
    open(my $file, '<', $filename)
        or die "Could not open '$filename': $!";
        
    # Print out all lines where the given search term appears
    while (my $line = <$file>) {
        if ($line =~ /$search_term/) {
            print "$line";
        }
    }
    
    close($file);
}

my $file_name = "subRoutine.txt";
my $search_term = "goodbye";

search_file($file_name, $search_term);