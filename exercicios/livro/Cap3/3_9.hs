module Main where

    tuplador :: String -> String -> String -> (String, String, String)
    tuplador x y z = (reverse x, reverse y, reverse z)

    main :: IO ()
    main = do
        print (tuplador "String" "de" "Teste")
