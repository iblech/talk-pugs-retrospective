my ($x, $y) = (1, 2);
async { atomic { $x = $y * 10; $y = $x * 10 } };
async { atomic { $x = $y * 10; $y = $x * 10 } };
async { atomic { $x = $y * 10; $y = $x * 10 } };
atomic { $x = $y * 10; $y = $x * 10 };
say "$x, $y"; # always "20000000, 200000000"
