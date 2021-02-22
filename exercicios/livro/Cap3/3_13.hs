module Main where

    data Metros = Metros { 
        dimensao :: Int, 
        valor :: Double 
    } | MetragemInvalida deriving (Show)

    areaQuadrado :: Metros -> Metros
    areaQuadrado (Metros 1 valor) = Metros 2 (valor ^ 2)
    areaQuadrado (Metros 2 valor) = Metros 2 valor
    areaQuadrado _ = MetragemInvalida

    areaRet :: Metros -> Metros -> Metros
    areaRet (Metros 1 a) (Metros 1 b) = Metros 2 (a * b)
    areaRet _ _ = MetragemInvalida

    volumeCubo :: Metros -> Metros
    volumeCubo (Metros 1 a) = Metros 3 (a^3)
    volumeCubo _ = MetragemInvalida

    main :: IO ()
    main = do
        print $ areaQuadrado (Metros 1 5)
        print $ areaRet (Metros 1 6) (Metros 1 3)
        print $ volumeCubo (Metros 1 2)
