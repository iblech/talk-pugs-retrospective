# Perl 6 code, runnable in Pugs.
use Digest::SHA1--perl5;

my $cxt = Digest::SHA1.new;
$cxt.add('Pugs!');

say $cxt.hexdigest;
# 66db83c4c3953949a30563141f08a848c4202f7f
