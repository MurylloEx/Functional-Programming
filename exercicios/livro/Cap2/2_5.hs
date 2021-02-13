module Main where

    head' :: [a] -> a
    head' (x:xs) = x

    main :: IO ()
    main = do
        print $ head' "Uma string qualquer"