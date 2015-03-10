sub prefix:<Σ>  (@x) { [+] *@x   }
sub postfix:<!> ($x) { [*] 1..$x }
say Σ [1..5!];  # 7260
