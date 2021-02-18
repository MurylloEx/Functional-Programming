import Text.Printf

main :: IO ()
main = do
    a' <- getLine
    b' <- getLine
    c' <- getLine
    d' <- getLine
    let a = read a' :: Integer
    let b = read b' :: Integer
    let c = read c' :: Integer
    let d = read d' :: Integer
    let diferenca = a * b - c * d
    putStrLn $ "DIFERENCA = " ++ show diferenca