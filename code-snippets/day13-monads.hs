-- src/Monads.hs at revision 23
data Env = Env { envContext :: Cxt
               , envPad     :: Pad
               , envEval    :: Exp -> Eval Val
               , envCC      :: Val -> Eval Val
               , envBody    :: Exp
               , envID      :: Unique
               }
