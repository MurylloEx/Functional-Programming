module Main where

    data Pergunta = Sim | Nao deriving (Eq, Show)

    pergNum :: Pergunta -> Int
    pergNum Sim = 1
    pergNum Nao = 0

    listPergs :: [Pergunta] -> [Int]
    listPergs ps = [pergNum p | p <- ps]

    and' :: Pergunta -> Pergunta -> Pergunta
    and' Sim Sim = Sim
    and' Sim Nao = Nao
    and' Nao Sim = Nao
    and' Nao Nao = Nao

    or' :: Pergunta -> Pergunta -> Pergunta
    or' Sim Sim = Sim
    or' Sim Nao = Sim
    or' Nao Sim = Sim
    or' Nao Nao = Nao

    not' :: Pergunta -> Pergunta -> Pergunta
    not' Sim Sim = Nao
    not' Sim Nao = Nao
    not' Nao Sim = Nao
    not' Nao Nao = Sim

    main :: IO ()
    main = do
        print $ listPergs [Sim, Nao, Sim, Sim, Nao]
        print $ and' Sim Nao
        print $ and' Sim Sim
        print $ or' Sim Nao
        print $ or' Nao Nao
        print $ not' Sim Sim
        print $ not' Nao Nao

        