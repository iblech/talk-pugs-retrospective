-- src/AST.hs at revision 7
data Exp                                                                                              
    = App String [Exp]                                                                                
    | Syn String [Exp]                                                                                
    | Prim ([Val] -> Val)                                                                             
    | Val Val                                                                                         
    | Var Var SourcePos                                                                               

type Var = String                                                                                     

data Val
    = VUndef
    | VBool  Bool
    | VList  [Val]
