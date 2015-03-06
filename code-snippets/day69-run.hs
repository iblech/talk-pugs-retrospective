-- src/Run.hs at revision 1750
prepareEnv = do
    inGV  <- newHandle stdin
    outGV <- newHandle stdout
    errGV <- newHandle stderr
    emptyEnv
        [ SymVar SGlobal "$*IN"  $ MkRef inGV
        , SymVar SGlobal "$*OUT" $ MkRef outGV
        , SymVar SGlobal "$*ERR" $ MkRef errGV
        , SymVar SGlobal "%*ENV" $
              hashRef (undefined :: IHashEnv)
        ]
