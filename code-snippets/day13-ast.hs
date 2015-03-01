-- src/AST.hs at revision 27
type Eval a = ContT Val (ReaderT Env IO) a
