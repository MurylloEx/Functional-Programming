module Main where

    last' :: [a] -> a
    last' xs = head $ reverse xs

    main :: IO ()
    main = do
        print $ last' [1, 2, 3, 4, 5]