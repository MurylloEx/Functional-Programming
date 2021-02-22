module Main where

    data Cripto = Mensagem String | Cifrado String | Erro deriving (Show)

    encriptar :: Cripto -> Cripto 
    encriptar (Cifrado _) = Erro
    encriptar (Mensagem str) = Cifrado [ succ x | x <- str ]

    encriptarTodos :: [Cripto] -> [Cripto]
    encriptarTodos = map encriptar

    main :: IO ()
    main = do
        print $ encriptarTodos [
            Mensagem "FATEC", 
            Mensagem "MURYLLO", 
            Mensagem "UPE"]
