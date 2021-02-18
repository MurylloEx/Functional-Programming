import Text.Printf

main :: IO ()
main = do
    tempo' <- getLine
    velo' <- getLine
    let tempo = read tempo' :: Double
    let velo = read velo' :: Double

    let distancia = tempo * velo :: Double
    let consumo = distancia / 12 :: Double

    putStrLn $ printf "%.3f" consumo