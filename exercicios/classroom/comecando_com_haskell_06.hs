module Main where

    init' :: [a] -> [a]
    init' xs = take (length xs - 1) xs

    main :: IO ()
    main = do
        print $ init' [1, 2, 3, 4, 5]