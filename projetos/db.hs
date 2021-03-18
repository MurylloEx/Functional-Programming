module Main where

    data MySqlData = MySqlData {
        dbHost :: String,
        dbName :: String,
        dbUser :: String,
        dbPass :: String
    } deriving (Show)

    mySqlConnect :: MySqlData -> String
    mySqlConnect data_ = "a"

    main :: IO ()
    main = do        
        putStrLn $ mySqlConnect (MySqlData "" "" "" "")