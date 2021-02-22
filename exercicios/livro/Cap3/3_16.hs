module Main where

    data Numero = Ok Double | Erro String deriving Show

    dividir :: Double -> Double -> Numero
    dividir _ 0 = Erro "Não foi possível dividir por 0"
    dividir a b = Ok (a / b)

    main :: IO ()
    main = do
        print $ dividir 1 0
        print $ dividir 2 3
