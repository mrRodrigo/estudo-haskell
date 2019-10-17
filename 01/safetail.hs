-- tail satisfazendo lista vazia 
safetail :: [a] -> [a] 
safetail (_:xs) = if null xs then [] else tail xs

-- utilizando equações restritas
safetail2:: [a] -> [a]
safetail2 xs | null xs   = []
             | otherwise = tail xs

-- casamento de padroes 
safetail3 :: [a] -> [a]
safetail3 []     = []
safetail3 (x:xs) = xs
