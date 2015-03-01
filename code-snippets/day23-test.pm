module Test-0.0.1;
use v6;

my $loop = 0;

sub ok (Bool $cond, Str ?$desc) is export {
    my $ok  := $cond ?? "ok " :: "not ok ";
    my $out := defined($desc)
        ?? (" - " ~ $desc)
        :: "";
    $loop++;
    say $ok, $loop, $out;
}
