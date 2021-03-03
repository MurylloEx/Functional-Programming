buscar2 :: [(Int, String)] -> Int -> String 
buscar2 ((a, b):xs) n
    | n == a = b
    | otherwise = buscar2 xs n

dicionario :: [(Int, [Char])]
dicionario = [(0, "zero"), (1, "um"), (2, "dois"), 
    (3, "tres"), (4, "quatro"), (5, "cinco"), 
    (6, "seis"), (7, "sete"), (8, "oito"), (9, "nove")]

numero :: [Int] -> [String]
numero = map (buscar2 dicionario)

main :: IO ()
main = do
    print $ numero [1, 2, 3, 4, 5, 6, 7]
