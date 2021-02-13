module Main where

    slice :: Int -> Int -> [a] -> [a]
    slice from to xs = take (to - from + 1) (drop from xs)

    revNum' :: String -> Int -> String 
    revNum' s i = reverse $ slice 0 i s

    main :: IO ()
    main = do
        print $ revNum' "STRING EM HASKELL" 5
