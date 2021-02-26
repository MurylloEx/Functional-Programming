-- A)
sum' :: [Int] -> Int 
sum' [] = 0
sum' [x] = x
sum' (x:xs) = x + sum' xs

-- B)
take' :: Int -> [a]-> [a]
take' 0 xs = []
take' m [x] = [x]
take' m (x:xs) = x : take' (m-1) xs

-- C)
last' :: [a] -> a
last' [x] = x
last' (x:xs) = last' xs

main :: IO ()
main = do
    print $ sum' [1..10]
    print $ take' 3 [1..10]
    print $ last' [1..10]