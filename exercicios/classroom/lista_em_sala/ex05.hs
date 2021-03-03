inserir :: [Int] -> Int -> Int -> [Int]
inserir xs pos elem = take pos xs ++ [elem] ++ drop pos xs

main :: IO ()
main = do
    print $ inserir [1, 2, 3, 4, 6, 7, 8, 9] 4 5