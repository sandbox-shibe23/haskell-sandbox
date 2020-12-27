module Basic04 where

-- 【問4】sum, product, take, drop, reverseと同じ機能の関数を再実装してください。関数名には'を付けてください。
sum' [] = 0
sum' (x:xs) = x + sum' xs

main = do
  print $ sum' [1..5]
