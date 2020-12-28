module Basic04_product where

-- 【問4】sum, product, take, drop, reverseと同じ機能の関数を再実装してください。関数名には'を付けてください。
product' [] = 1
product' (x:xs) = x * product' xs

main = do
  print $ product' [1..5]
