import Text.Printf

main :: IO ()
main = do
    numeroFunc' <- getLine
    horasTrab' <- getLine
    valorHora' <- getLine

    let numeroFunc = read numeroFunc' :: Integer
    let horasTrab = read horasTrab' :: Double
    let valorHora = read valorHora' :: Double

    let salario = horasTrab * valorHora

    putStrLn $ "NUMBER = " ++ show numeroFunc
    putStrLn $ printf "SALARY = U$ %.2f" salario