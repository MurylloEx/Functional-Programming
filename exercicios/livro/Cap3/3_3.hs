module Main where

    data Jogada = Pedra | Papel | Tesoura deriving Show
    data Resultado = Venceu | Perdeu | Empate deriving Show

    jogar :: Jogada -> Jogada -> Resultado
    jogar Pedra Pedra = Empate
    jogar Papel Papel = Empate
    jogar Tesoura Tesoura = Empate
    jogar Pedra Tesoura = Venceu
    jogar Papel Pedra = Venceu
    jogar Tesoura Papel = Venceu
    jogar _ _ = Perdeu

    main :: IO ()
    main = do
        print $ show $ jogar Pedra Papel
        print $ show $ jogar Pedra Tesoura
        print $ show $ jogar Tesoura Papel
        print $ show $ jogar Papel Tesoura
        print $ show $ jogar Papel Papel
