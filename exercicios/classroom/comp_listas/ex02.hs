
grid :: Int -> Int -> [(Int, Int)]
grid x y = [(x', y') | x' <- [0..x], y' <- [0..y]]

main :: IO ()
main = do
    print $ show (grid 1 2)