sub { $_ ?? $_ * &?SUB($_ - 1) :: 1 }.(10).say
# 3628800
