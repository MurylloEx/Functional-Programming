
repete :: Int -> [[Int]]
repete 0 = []
repete n = map (const n) [1..n] : repete (n-1)

main :: IO ()
main = do
    print $ concat $ repete 4