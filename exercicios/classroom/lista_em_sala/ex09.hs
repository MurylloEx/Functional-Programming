
fib :: (Eq a, Num a, Num p) => a -> p
fib 0 = 0
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

fibonacci :: (Enum a1, Eq a1, Num a1, Num a2) => a1 -> [a2]
fibonacci n = [fib x | x <- [0..n-1]]

main :: IO ()
main = do
    print $ fibonacci 10