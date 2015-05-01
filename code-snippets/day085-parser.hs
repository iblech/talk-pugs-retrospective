-- src/Pugs/Parser.hs at revision 2380
ruleClosureTrait :: RuleParser Exp
ruleClosureTrait = rule "closure trait" $ do
  name  <- tryChoice $ map symbol $ words "BEGIN END"
  block <- ruleBlock
  let (fun, names) = extract (block, [])
  let code = VCode { subName = name, subFun = fun }
  case name of
    -- Notice the bug here? Yes, you in the audience!
    "END"   -> return $
      App "&unshift" [Var "@*END"] [Syn "sub" code]
    "BEGIN" -> do
      rv <- unsafeEvalExp fun
      return rv
