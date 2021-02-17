module Main where
    
    import Data.List
    import Text.Printf

    strToInt32 :: [Char] -> Int 
    strToInt32 n = read n :: Int

    strToDouble :: [Char] -> Double 
    strToDouble n = read n :: Double

    strToInteger' :: [Char] -> Integer 
    strToInteger' n = read n :: Integer

    numToString :: Show a => a -> String
    numToString = show

    int32ToDouble :: Int -> Double 
    int32ToDouble n = read $ show n :: Double

    doubleToInt32 :: Double -> Int 
    doubleToInt32 n = read $ printf "%.0f" n :: Int

    split :: String -> Char -> [String]
    split [] delim = [""]
    split (c:cs) delim
        | c == delim = "" : rest
        | otherwise = (c : head rest) : tail rest
        where
            rest = split cs delim

    checkValues :: Int -> Int -> Int -> Int -> Bool
    checkValues a b c d = (b > c) && (d > a) && ((c + d) > (a + b)) && (c > 0) && (d > 0) && even a

    presentResult :: Bool -> String 
    presentResult True = "Valores aceitos"
    presentResult False = "Valores nao aceitos"

    main :: IO ()
    main = do
        args' <- getLine 
        let args = split args' ' '
        
        let _a = strToInt32 $ head args
        let _b = strToInt32 (args !! 1)
        let _c = strToInt32 (args !! 2)
        let _d = strToInt32 (args !! 3)

        putStrLn $ presentResult $ checkValues _a _b _c _d