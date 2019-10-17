### Expressões condicionais podem ser aninhadas:

```haskell

signum :: Int -> Int
signum n = if n < 0 then -1 
           else if n ==0 then ese 
```

##### Exressões condicionais em Haskell devem conter um else. Isto para que se evite problemas de ambiguidade com condicionais aninhados.
