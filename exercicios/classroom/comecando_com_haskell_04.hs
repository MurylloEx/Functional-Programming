module Main where

    {-
        1) A identação da definição de xs estava errada;
        2) Funções não podem conter a primeira letra maiúscula na declaração de seu nome;
        3) O uso do caractere apóstrofo em 'div' ao invés de `div` estava incorreto.
    -}

    --PS: O tipo de retorno de n foi especificado por motivos de boas práticas.
    n :: Int
    n = a `div` length xs
        where
            a = 10
            xs = [1, 2, 3, 4, 5]

    --O retorno esperado no main é o valor 2.
    main :: IO ()
    main = do
        print n