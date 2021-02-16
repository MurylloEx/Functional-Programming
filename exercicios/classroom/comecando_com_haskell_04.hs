module Main where

    {-
        1) A identação da definição de xs estava errada;
        2) Funções não podem conter a primeira letra maiúscula em seu nome;
        3) O caractere apóstrofo ao invés de `div` estava incorreto.
    -}

    -- PS: O tipo de retorno de n foi especificado por boa prática

    n :: Int
    n = a `div` length xs
        where
            a = 10
            xs = [1, 2, 3, 4, 5]

    -- Testando o retorno no main, o valor esperado é 2.

    main :: IO ()
    main = do
        print n