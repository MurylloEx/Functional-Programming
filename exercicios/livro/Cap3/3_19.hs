module Main where

    data Cambio = Euro | Real | Dolar deriving (Show)

    data Moeda = Moeda { 
        valor  :: Double, 
        cambio :: Cambio 
    } deriving (Show)

    main :: IO ()
    main = do
        print ""