# t/01basic.t at revision 32
use v6;

say "1..2";
say "ok 1 # Welcome to Pugs!";

sub cool { fine($_) ~ " # We've got " ~ toys }
sub fine { "ok " ~ $_ }
sub toys { "fun and games!" }

say cool 2 # and that's it, folks!
