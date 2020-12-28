module Basic04_take where

-- 【問4】sum, product, take, drop, reverseと同じ機能の関数を再実装してください。関数名には'を付けてください。
take' 0 x = x
take' 1 (x:xs) = [x]
take' n (x:xs) = [x] ++ take' ( n-1 ) xs

main = do
  print $ take' 4 [1..5]
