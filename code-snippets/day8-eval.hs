-- src/Eval.hs at revision 7
reduce env@Env{ cxt = cxt } exp@(Syn name exps)
    | name `isInfix` ";"
    , [left, right] <- exps
    , (env', exp)   <- runStmt "Any" env  left
    , (env', exp)   <- runStmt cxt   env' right
    = (const env', exp)
    | name `isInfix` ":="
    , [Var var _, exp] <- exps
    , (fenv, Val val)  <- reduce env exp
    = (combineEnv fenv var val, Val val)
