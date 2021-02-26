
produto :: [Int] -> [Int] -> Int
produto xs ys = sum [x * y | (x, y) <- zip xs ys]

main :: IO ()
main = do
    print $ produto [2, 3, 4, 5, 6, 7] [1, 2, 3, 4, 2, 1]