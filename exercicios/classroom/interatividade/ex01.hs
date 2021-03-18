module Main where

    {-
        Nota: é importante destacar que putStr não imprime quebra de linha.
        Dessa forma, putStr apenas imprime o que lhe é passado, diferente do
        putStrLn.
    -}
    putStr' :: String -> IO ()
    putStr' [] = return ()
    putStr' str = 
        sequence_ [
            putChar c | c <- str
        ]

    main :: IO ()
    main = do
        putStr' "Palavra"
        putStr' "Casa"
        putStr' "Haskell"