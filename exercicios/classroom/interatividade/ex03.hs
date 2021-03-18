module Main where

    {-
        Parece contraintuitivo mas a função sequence consegue
        reduzir a quantidade de conversões necessárias de valores
        monádicos de N para 1. Nessa resposta eu simplesmente 
        utilizei uma compreensão de lista de 1 até N onde N é a
        quantidade de números que serão somados, em seguida obtém-se
        esses números usando a função readLn que por fim gera uma 
        lista e então soma tudo usando o sum. O segredo está no 
        sequence que converte de [IO Int] para IO [Int].
    -}
    somador :: IO () 
    somador = do
        putStrLn "Quantos números?"
        quantidade <- readLn :: IO Int
        numeros <- sequence [ readLn :: IO Int | _ <- [1..quantidade] ]
        putStrLn $ "O total é " ++ show (sum numeros)


    {-
        Já nessa segunda solução, utilizo a recursividade e inclusive
        compartilhei com alguns colegas para discutir melhor como 
        funciona o uso da função sequence. Repare que a única diferença
        notável entre essa solução e a primeira é que essa não usa
        compreensão de listas.
    -}
    somadorAux :: Int -> [IO Int]
    somadorAux 0 = []
    somadorAux n = (readLn :: IO Int) : somadorAux (n-1)

    somador2 :: IO ()
    somador2 = do
        putStrLn "Quantos números? "
        numeros <- readLn :: IO Int
        let valores = somadorAux numeros
        lista <- sequence valores
        putStrLn ("O total é " ++ show (sum lista))

    main :: IO ()
    main = do
        somador