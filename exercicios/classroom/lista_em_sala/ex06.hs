posicao :: Int -> [a] -> a
posicao 0 (x:xs) = x 
posicao p (x:xs) = posicao (p-1) xs

main :: IO ()
main = do
    print $ posicao 2 ['a', 'b', 'c', 'd']