module Main where

    data Cripto = Mensagem String | Cifrado String | Erro deriving (Show)

    encriptar :: Cripto -> Cripto 
    encriptar (Cifrado _) = Erro
    encriptar (Mensagem str) = Cifrado [ succ x | x <- str ]

    decriptar :: Cripto -> Cripto
    decriptar (Mensagem _) = Erro
    decriptar (Cifrado str) = Mensagem [ pred x | x <- str ]

    main :: IO ()
    main = do
        print $ encriptar (Mensagem "Olá mundo")
        print $ decriptar (encriptar (Mensagem "Olá mundo"))
