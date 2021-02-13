module Main where

    checaPalindromo :: [Char] -> Bool
    checaPalindromo [] = False
    checaPalindromo str = str == reverse str


    main :: IO ()
    main = do
        print $ checaPalindromo "muryllo"
        print $ checaPalindromo "arara"
        print $ checaPalindromo "esse"
        print $ checaPalindromo "asa"
        print $ checaPalindromo ""
        