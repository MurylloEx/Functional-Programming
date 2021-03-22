
(^^^) :: (Fractional a, Eq a, Ord a) => a -> a -> a
(^^^) x 0 = 1
(^^^) x y 
    | y < 0 = 1 / (x ^^^ abs y)
    | otherwise = x * (x ^^^ (y-1))


main :: IO ()
main = do
    print $ 10 ^^^ (-1)