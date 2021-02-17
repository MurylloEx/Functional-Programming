module Main where
    
    import Text.Printf

    toInt32 :: [Char] -> Int 
    toInt32 n = read n :: Int

    toDouble :: [Char] -> Double 
    toDouble n = read n :: Double

    toInteger' :: [Char] -> Integer 
    toInteger' n = read n :: Integer

    toString :: Show a => a -> String
    toString = show


    main :: IO ()
    main = do
        s' <- getLine 
        let segundos = toInt32 s'
        
        let usR = segundos `mod` 3600;
        let usH = (read $ show (segundos - usR) :: Double) / 3600;
        let usR_ = usR `mod` 60;
        let usm = (read $ show (usR - usR_) :: Double) / 60;

        putStrLn (printf "%.0f" usH ++ ":" ++ printf "%.0f" usm ++ ":" ++ toString usR_)

