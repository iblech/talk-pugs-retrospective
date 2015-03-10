-- src/Pugs/Parser.hs at revision 3388
tightOperators :: RuleParser [[Operator Char Env Exp]]
tightOperators = do
  infixOps <- currentInfixOps
  return $
    [ leftOps $ " " ++ unwords infixOps ++ " "
    , leftOps  " >>+<< + - ~ +| +^ ~| ~^ ?| "
    , listOps  " & "
    , listOps  " ^ | "
    , ...
    ]
