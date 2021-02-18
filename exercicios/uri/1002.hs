import Text.Printf

main :: IO()
main = do
    __r' <- getLine
    let __pi = 3.14159
    let raio = read __r' :: Double
    let hachurada = __pi * raio * raio
    putStrLn $ printf "A=%.4f" hachurada