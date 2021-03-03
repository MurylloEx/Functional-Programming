palindromo :: (Eq a) => [a] -> Bool
palindromo xs = reverse xs == xs

main :: IO ()
main = do
    print $ palindromo [1,2,3,4,5]
    print $ palindromo [1,2,3,2,1]
    print $ palindromo [1,2,2,1]