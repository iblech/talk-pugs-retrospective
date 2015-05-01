-- src/Parser.hs at revision 7
parseVar = lexeme $ do
    sigil <- oneOf "$@%&"
    name  <- many1 (alphaNum <|> char '_')
    return $ Var (sigil:name)
