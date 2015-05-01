-- src/Prim.hs at revision 7
op2 :: Ident -> Val -> Val -> Val
op2 "*" = op2Numeric (*)
op2 "~" = op2Str (++)

op2Str f x y = VStr $ f (vCast x) (vCast y)
