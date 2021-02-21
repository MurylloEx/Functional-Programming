module Main where

    main :: IO ()
    main = do
        print $ show [11 ^ x | x <- [0..6]]
        print $ show [x | x <- [1..39], x `mod` 4 /= 0]
        print $ show ['A':x:"BB" | x <- "abcdefg"]
        print $ show [(3*x) - 1 | x <- [2..11], x `notElem` [5, 8, 12]]
        print $ show [1.0 / 2^x | x <- [0..5]]
        print $ show [(9*x) + 1 | x <- [0..6]]
        print $ show [2*x | x <- [1..15],  x `notElem` [3, 7, 10, 13]]
        print $ show [x | x <- "@ACDEGHJL"]