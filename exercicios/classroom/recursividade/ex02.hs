somar :: Int -> Int
somar x 
    | x == 0 = x
    | otherwise = x + somar (x - 1)

main :: IO ()
main = do
    print $ show (somar 5)