import Text.Printf

toInt32 :: [Char] -> Int
toInt32 n = read n :: Int

toDouble :: [Char] -> Double
toDouble n = read n :: Double

toInteger :: [Char] -> Integer
toInteger n = read n :: Integer

main :: IO ()
main = do
  n1' <- getLine
  n2' <- getLine

  let n1 = toDouble n1'
  let n2 = toDouble n2'

  putStrLn (printf "%.3f" (n1 / n2) ++ " km/l")
