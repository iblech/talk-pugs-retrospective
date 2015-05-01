-- src/Prim.hs at revision 19
op1 "rand" e = \(x :: VNum) -> VNum $
    unsafePerformIO $ getStdRandom
        (randomR (0, if x == 0 then 1 else x))
