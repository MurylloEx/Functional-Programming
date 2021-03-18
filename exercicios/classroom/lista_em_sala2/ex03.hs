data Arvore a = Folha a | No (Arvore a) (Arvore a)

contarFolhas :: Arvore a -> Int 
contarFolhas (Folha _) = 1
contarFolhas (No left right) = contarFolhas left + contarFolhas right

balanceada' :: Arvore a -> Bool
balanceada' (Folha a) = True 
balanceada' (No left right) = abs (contarFolhas left - contarFolhas right) < 2 
    && balanceada' left && balanceada' right 