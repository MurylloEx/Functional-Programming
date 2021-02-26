fatores :: Int -> [Int]
fatores n = reverse $ drop 1 $ reverse [x | x <- [1..n], n `mod` x == 0]

perfeitos :: Int -> [Int]
perfeitos x = [ a | a <- [1..x], a == sum (fatores a) ]

main :: IO ()
main = do
    putStrLn "Forneça um número:"
    entrada' <- getLine 
    let numero = read entrada' :: Int
    print $ perfeitos numero