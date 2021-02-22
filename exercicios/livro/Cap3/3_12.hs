module Main where

    data Binario = Zero | Um deriving (Show, Eq)

    binList :: [Binario] -> [Int]
    binList xs = [if x == Um then 1 else 0 | x <- xs]

    main :: IO ()
    main = do
        print $ binList [Zero, Um, Zero, Zero, Um]
