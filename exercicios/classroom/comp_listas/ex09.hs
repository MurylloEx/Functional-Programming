
produto :: [Int] -> [Int] -> Int
produto xs ys = sum [v1 * v2 | (v1, v2) <- zip xs ys]

-- Resultado esperado:
-- 59
main :: IO ()
main = do
    print $ produto [2, 3, 4, 5, 6, 7] [1, 2, 3, 4, 2, 1]