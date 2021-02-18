main :: IO ()
main = do
    __a' <- getLine
    __b' <- getLine
    let a = read __a' :: Int
    let b = read __b' :: Int
    let soma = a + b
    putStrLn $ "SOMA = " ++ show soma
