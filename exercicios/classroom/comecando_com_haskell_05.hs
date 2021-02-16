module Main where

    last' :: [a] -> a
    last' xs = xs !! (length xs - 1)

    main :: IO ()
    main = do
        print $ last' [1, 2, 3, 4, 5]