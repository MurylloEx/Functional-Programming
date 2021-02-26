
grid :: Int -> Int -> [(Int, Int)]
grid x y = [(x', y') | x' <- [0..x], y' <- [0..y]]

quadrado :: Int -> [(Int, Int)]
quadrado l = [(x', y') | (x', y') <- grid l l, x' /= y']

main :: IO ()
main = do
    print $ quadrado 2