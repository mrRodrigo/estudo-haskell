-- ordena em ordem ascendente uma lista de listas a partir do tamanho das sublistas

sizeOfList :: [a] -> Int
sizeOfList [] = 0
sizeOfList (x:xs) = 1 + sizeOfList xs


get_menor :: [[Int]] -> [Int]
get_menor [x] = x
get_menor (x:xs) | (sizeOfList x < (sizeOfList (get_menor xs))) = x
                 | otherwise = get_menor xs


remove_menor :: [[Int]] -> [[Int]]
remove_menor [[]] = [[]]
remove_menor (x:xs) | (x == (get_menor (x:xs))) = xs
                    | otherwise = (x:remove_menor xs)


aux_ordena :: [[Int]] -> [[Int]] -> [[Int]] 
aux_ordena lista_ordenada [[]] = lista_ordenada
aux_ordena lista_ordenada (x:xs) = aux_ordena (lista_ordenada++[get_menor (x:xs)]) (remove_menor (x:xs))


ordena :: [[Int]] -> [[Int]]
ordena [[]] = [[]]
ordena lista = aux_ordena [[]] lista


-- aplica de forma alternada duas funções passadas como argumentos aos elementos de uma lista
myMapAux :: (a -> b) -> (a -> b) -> a -> a -> [b]
myMapAux f1 f2 x y = [f1 x, f2 y]

myMap :: (a -> b) -> (a -> b) -> [a] -> [b]
myMap f1 f2 (x:y:xs) = ([f1 x, f2 y]++(myMap f1 f2 xs))
myMap _ _ [] = []
myMap f1 _ (x:[]) = [f1 x]


--  implemente o algoritmo de Luhn para a validações de números de cartão de crédito para códigos de cartão de qualquer tamanho.

nineRole :: Int -> Int
nineRole a = if (a * 2) < 9 then a * 2 else (a * 2) - 9

luhn :: [Int] -> Bool
luhn [] = False
luhn xs = if ((sum (myMap (*1) (nineRole) xs)) `mod` 10) == 0 then True else False
