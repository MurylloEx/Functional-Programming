module Main where

    reverter' :: String -> [Char] 
    reverter' x = [ chr | chr<-reverse x ]

    main :: IO ()
    main = do
        print $ reverter' "String em Haskell"