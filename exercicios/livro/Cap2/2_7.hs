module Main where

    tuplador :: Int -> (Int, Int, Int, Int)
    tuplador i = (2*i, 3*i, 4*i, 5*i)

    main :: IO ()
    main = do
        print $ tuplador 1
        
        