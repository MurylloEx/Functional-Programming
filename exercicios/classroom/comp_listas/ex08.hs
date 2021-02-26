buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = buscar x [(z, i) | (z, i) <- zip xs [0 ..]]

main :: IO ()
main = do
    print $ buscar 3 [(1, 3), (3, 4), (5, 6)]
    print $ posicoes 4 [1, 2, 3, 4, 5]