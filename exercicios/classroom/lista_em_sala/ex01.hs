maior :: (Ord a, Ord b, Num b, Enum b) => [a] -> (a, b)
maior lista = maximum(zip lista [0..])

main :: IO ()
main = do
    print $ maior [11, 51, 2, 3, 4]