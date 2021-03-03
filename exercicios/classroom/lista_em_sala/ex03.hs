delete :: [Int] -> Int -> [Int]
delete [] _ = []
delete (x:xs) 0 = xs
delete (x:xs) pos = x : delete xs (pos-1)


main :: IO ()
main = do
    print $ delete [1, 2, 3, 4, 5] 0
    print $ delete [1, 2, 3, 4, 5] 2