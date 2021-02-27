buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = buscar x [(z, i) | (z, i) <- zip xs [0 ..]]

listaTuplas :: [(Integer, Integer)]
listaTuplas = [(1, 3), (3, 4), (5, 6)]

listaInteiros :: [Integer]
listaInteiros = [1, 2, 3, 4, 5]

-- Resultados esperados:
-- [4]
-- [6]
-- [3]
-- [1]
-- [0]
main :: IO ()
main = do
    print $ buscar 3 listaTuplas
    print $ buscar 5 listaTuplas

    print $ posicoes 4 listaInteiros
    print $ posicoes 2 listaInteiros
    print $ posicoes 1 listaInteiros