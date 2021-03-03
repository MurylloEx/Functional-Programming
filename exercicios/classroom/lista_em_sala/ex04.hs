import Data.List ( sort )

impares :: [Int] -> [Int]
impares xs = sort [x | x <- xs, odd x]

main :: IO ()
main = do
    print $ impares [1, 2, 3, 4, 5, 6, 7, 8, 9]