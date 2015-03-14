-- src/Pugs/Prim.hs at revision 3524
op1 "gather" = \v -> do
    av  <- newArray []
    evl <- asks envEval
    symTake <- genSym "@?TAKE" (MkRef av)
    enterLex [symTake] $ evl (App (Val v) [] [])
    fmap VList $ readIVar av

op1 "take" = \v -> do
    lex <- asks envLexical
    arr <- findSymRef "@?TAKE" lex
    op2 "push" (VRef arr) v
