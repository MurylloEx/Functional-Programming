import System.IO ( hSetEcho, stdin )

{-
  Função do material de aula.
-}
obterChar:: IO Char 
obterChar = do
  hSetEcho stdin False
  x <- getChar
  hSetEcho stdin True
  return x

{-
  Função auxiliar para imprimir o caractere 
  e retornar uma string de controle.

  OBS: Tive problemas no Debian 10 Buster, 
  ao imprimir os caracteres com putChar.
  Ao que parece, a biblioteca System.IO tem
  alguns problemas de cross-platform que fazem
  com que ele funcione diferente para diferentes
  sistemas operacionais. No windows também tive
  problemas.
-}
imprimir :: [Char] -> [Char] -> IO String
imprimir [] controle = return controle
imprimir (char:str) controle = do
  putChar char
  imprimir str controle

{-
  Função principal responsável por obter 
  linha a linha exibindo na tela.
-}
obterLinha :: IO String 
obterLinha = do 
  char <- obterChar
  case char of
    '\n' -> do
      imprimir [char] []
    '\DEL' -> do
      imprimir "\b \b" "\DEL"
    _ -> do
      putChar char
      string <- obterLinha
      if string == "\DEL" then do 
        obterLinha
      else do
        return (char:string)

main :: IO ()
main = do
  str <- obterLinha
  putStrLn str