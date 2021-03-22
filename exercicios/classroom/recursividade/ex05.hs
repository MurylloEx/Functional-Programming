-- A)
and' :: [Bool] -> Bool 
and' [] = False 
and' [x] = x
and' (x:xs) = x && and' xs

-- B)
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

-- C)
replicate' :: Int -> a -> [a]
replicate' 0 y = []
replicate' x y = y : replicate' (x-1) y

-- D)
(!!!) :: [a] -> Int -> a
(!!!) (x:xs) 0 = x
(!!!) (x:xs) i = xs !!! (i-1)

-- E)
elem' :: Eq a => a -> [a] -> Bool
elem' e [] = False
elem' e (q:qs) 
    | q == e = True 
    | otherwise = elem' e qs

main :: IO ()
main = do
    print $ and' [True, True, True]
    print $ concat' [[1,2,3], [4, 5, 6]]
    print $ [1, 2, 3, 4, 5, 6] !!! 4
    print $ elem' 7 [1, 2, 3, 4, 5, 6, 7, 8]