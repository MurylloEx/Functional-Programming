module Main where

    ehPar :: [Char] -> Bool 
    ehPar str = even $ length str

    stringFiltro :: [String] -> [String]
    stringFiltro [] = []
    stringFiltro xs = [ x | x <- xs, ehPar x ]

    main :: IO ()
    main = do
        print $ stringFiltro ["Muryllo", "Pimenta", "de", "Oliveira", "Programação", "Haskell"]