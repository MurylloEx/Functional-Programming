module Main where

    reverter' :: [String] -> [String] 
    reverter' xs = [ reverse x | x <- xs ]

    main :: IO ()
    main = do
        print $ reverter' 
            [
                "String em Haskell", 
                "Muryllo", 
                "Livro de Haskell"
            ]