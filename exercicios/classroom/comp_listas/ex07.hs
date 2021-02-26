compara :: (Eq a, Eq b) => [(a, b)] -> [(a, b)] -> Bool
compara x y = x == y

geradorDuplo :: [(Int, Int)]
geradorDuplo = [(x, y) | x <- [1, 2], y <- [3, 4]]

geradorEquivalente :: [(Int, Int)]
geradorEquivalente = [(1, y) | y <- [3, 4]] ++ [(2, y) | y <- [3,4]]

main :: IO ()
main = do
    let a =  geradorDuplo
    let b =  geradorEquivalente
    putStrLn "É equivalente?"
    print $ compara a b