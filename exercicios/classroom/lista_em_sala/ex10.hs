interseccao :: (Eq a) => [a] -> [a] -> [a]
interseccao xs ys = [ k | k <- xs, k `elem` ys ]

interseccao2 :: (Eq a) => [a] -> [a] -> [a]
interseccao2 xs ys = filter (`elem` ys) xs

main :: IO ()
main = do
    print $ interseccao [3, 6, 5, 7] [9, 7, 5, 1, 3]
    print $ interseccao2 [3, 6, 5, 7] [9, 7, 5, 1, 3]