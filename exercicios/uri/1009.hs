import Text.Printf

main :: IO ()
main = do
    -- ESSE NOME NÃO SERÁ USADO
    nomeFunc' <- getLine
    salarioFixo' <- getLine
    valorVendas' <- getLine

    -- CASTS EXPLÍCITOS
    let nomeFunc = read nomeFunc' :: String
    let salarioFixo = read salarioFixo' :: Double
    let valorVendas = read valorVendas' :: Double

    let total = salarioFixo + (valorVendas * 0.15)

    -- IMPRIME O TOTAL
    putStrLn $ printf "TOTAL = R$ %.2f" total
