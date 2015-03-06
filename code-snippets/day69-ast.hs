-- src/AST.hs at revision 1750
instance Hash.Class IHashEnv where
    fetch _ = do
        envs <- liftIO getEnvironment
        return [ (k, VStr v) | (k, v) <- envs ]
    fetchVal _ key = tryIO undef $ do
        str <- getEnv key
        return $ VStr str
    storeVal _ key val = do
        str <- fromVal val
        liftIO $ setEnv key str True
