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

    isBaskPossible :: Double -> Double -> Bool 
    isBaskPossible a delta = (a == 0) || (delta < 0)

    solveBaskEq :: Double -> Double -> Double -> [Double]
    solveBaskEq a b delta = [
        -b + sqrt delta / (2 * a), 
        -b - sqrt delta / (2 * a)]

    main :: IO ()
    main = do
        args' <- getLine 
        let args = split args' ' '
        
        let _a = strToDouble $ head args
        let _b = strToDouble (args !! 1)
        let _c = strToDouble (args !! 2)

        let delta = (_b ^ 2) - (4 * _a * _c)

        if isBaskPossible _a delta then do
            putStrLn "Impossivel calcular"
        else do
            let result = solveBaskEq _a _b delta
            print result
            
