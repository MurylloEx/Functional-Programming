-- Define as cédulas aqui:
cedulas :: [Int]
cedulas = [100, 50, 20, 10, 5, 2, 1]

-- Os parâmetros são os seguintes:
-- Quantidades de cédulas, Índice da cédula, Valor restante
cNotas :: [Int] -> Int -> Int -> [Int]
cNotas qs v i | i >= length cedulas = reverse qs -- Retornando a lista revertida pois os elementos eram adicionados no início.
              | otherwise = cNotas ((v `div` 
                  (cedulas !! i)):qs) -- Inserindo o resultado da contagem da cédulas na frente da lista.
                    (v `mod` (cedulas !! i)) (i+1)  -- Chamando recursivamente a função de calcular notas e passa o índice atual + 1.

-- Se ele executar mais que o número de vezes correspondente a quantidade de 
-- elementos em "cedulas", retornará a lista com os resultados revertida.

-- Aqui é onde eu vou iterar os valores obtidos em cNotas e imprimí-los :)
-- Isso para mim seria algo equivalente a um forM ou forM_.
loop :: (Num a, Show a) => Int -> [a] -> IO ()
loop 0 _ = return ()
loop n result =
    do
      let v1 = show (reverse result !! (n - 1))
      let v2 = show (reverse cedulas !! (n - 1))
      putStrLn (v1 ++ " nota(s) de R$ " ++ v2 ++ ",00")
      loop (n-1) result

main :: IO ()
main = do
    -- Obtém a entrada do usuário
    i' <- getLine 
    -- Imprime o valor recebido
    putStrLn i'
    -- Faz a converção explícita da entrada para Inteiro.
    let money = read i' :: Int 
    -- Conta as cédulas
    let result = cNotas [] money 0
    -- Inicia o loop de impressão do resultado :)
    loop (length result) result