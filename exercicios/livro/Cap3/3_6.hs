module Main where

    data Mes = Janeiro | Fevereiro | Marco 
        | Abril | Maio | Junho 
        | Julho | Agosto | Setembro 
        | Outubro | Novembro | Dezembro deriving (Enum, Show)

    checaMes :: Mes -> Int 
    checaMes Abril = 30
    checaMes Junho = 30
    checaMes Setembro = 30
    checaMes Novembro = 30
    checaMes Fevereiro = 28
    checaMes _ = 31

    prox :: Mes -> Mes
    prox Janeiro = Fevereiro
    prox Fevereiro = Marco
    prox Marco = Abril
    prox Abril = Maio
    prox Maio = Junho
    prox Junho = Julho
    prox Julho = Agosto
    prox Agosto = Setembro
    prox Setembro = Outubro
    prox Outubro = Novembro
    prox Novembro = Dezembro

    main :: IO ()
    main = do
        print $ show Janeiro
