module Main where

    data Binario = Zero | Um deriving Show

    data Funcao = Soma2 | Maior | Menor | Mult2 deriving Show

    aplicar :: Funcao -> Binario -> Binario -> Binario
    -- Define a função Maior
    aplicar Maior Zero Zero = Zero
    aplicar Maior _ _ = Zero
    -- Define a função Menor
    aplicar Menor Um Um = Um
    aplicar Menor _ _ = Zero
    -- Define a função Mult2
    aplicar Mult2 Um Um = Um
    aplicar Mult2 _ _ = Zero
    -- Define a função Soma2
    aplicar Soma2 Zero Zero = Zero
    aplicar Soma2 Um Um = Zero
    aplicar Soma2 _ _ = Um
    

    main :: IO ()
    main = do
        print $ aplicar Maior Um Zero
