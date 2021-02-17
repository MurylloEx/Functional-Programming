module Main where
    
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

    main :: IO ()
    main = do
        s' <- getLine 
        let dias = strToInt32 s'
        
        let ushortR = dias `mod` 365;
        let ushortY = doubleToInt32 (int32ToDouble (dias - ushortR) / 365);
        let _ushortR = ushortR `mod` 30;
        let ushortm = doubleToInt32 (int32ToDouble (ushortR - _ushortR) / 30);
        let ushortd = _ushortR;

        putStrLn $ numToString ushortY ++ " ano(s)"
        putStrLn $ numToString ushortm ++ " mes(es)"
        putStrLn $ numToString ushortd ++ " dia(s)"
        



