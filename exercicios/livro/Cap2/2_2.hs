module Main where

    ehPar :: String -> Bool 
    ehPar str = even $ length str

    main :: IO ()
    main = do
        print $ ehPar "Olaa"