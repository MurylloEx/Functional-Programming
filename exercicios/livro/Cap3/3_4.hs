module Main where

    removeVogais :: String -> String 
    removeVogais [] = ""
    removeVogais xs = [ x | x <- xs, x `notElem` "aeiouAEIOU" ]

    main :: IO ()
    main = do
        print $ removeVogais "Teste de string. Removendo Vogais :)"
