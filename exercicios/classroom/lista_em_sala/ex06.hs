posicao :: Int -> [a] -> Maybe a
posicao _ [] = Nothing
posicao 0 (x:xs) = Just x 
posicao p (x:xs) = posicao (p-1) xs

-- ['a', 'b', 'c', 'd']
-- ['b', 'c', 'd']
-- ['c', 'd']
--   ^
-- Idx: 0

main :: IO ()
main = do
    print $ posicao 2 ['a', 'b', 'c', 'd']