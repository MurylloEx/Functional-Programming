module Main where

    filtraNumeros :: [Int] -> [Int]
    filtraNumeros [] = []
    filtraNumeros xs = reverse [x | x <- xs, (x `mod` 7 /= 0) && odd x, odd x]

    main :: IO ()
    main = do
        print $ show $ filtraNumeros [1, 2, 3, 4, 5, 6, 7, 8, 21, 22, 23, 94, 707, 714]
