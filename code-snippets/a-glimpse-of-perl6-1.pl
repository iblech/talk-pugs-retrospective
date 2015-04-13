if all(@age) > 42 or $name eq "Curry"|"Schoenfinkel" {
    say "All good!";
}

for 17..41 -> $i {
    ...;
}

say "I was compiled ", time - BEGIN { time },
    " seconds ago.";

say @foo.map:{ $_**2 }.sort:{ abs($^a) <=> abs($^b) };
