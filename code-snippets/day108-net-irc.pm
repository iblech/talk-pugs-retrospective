# ext/Net-IRC/lib/Net/IRC.pm at revision 2850
module Net::IRC-0.03;

sub new_bot(Str $nick, Str $host, ...) {
    my $self;
    ...;
    return $self = {
        connect => {...},
        join    => -> Str $channel {...},
        ...,
    };
}

# Usage: my $bot = new_bot(...); $bot<run>();
