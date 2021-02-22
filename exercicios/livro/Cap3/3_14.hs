module Main where

    data Valido = Sim | Nao deriving Show

    isNomeValido :: [Char] -> Valido
    isNomeValido [] = Nao
    isNomeValido _ = Sim

    main :: IO ()
    main = do
        print $ isNomeValido "Muryllo"
        print $ isNomeValido ""
