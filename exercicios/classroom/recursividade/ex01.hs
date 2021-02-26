fatorial :: (Ord p, Num p) => p -> p
fatorial n
    | n <= 0 = 1
    | otherwise = n * fatorial (n-1)

main :: IO ()
main = do
    print $ show (fatorial 6)