module Basic04_drop where

-- 【問4】sum, product, take, drop, reverseと同じ機能の関数を再実装してください。関数名には'を付けてください。
drop' 0 x = x
drop' 1 (_:xs) = xs
drop' n (_:xs) = drop' ( n-1 ) xs

main = do
  print $ drop' 3 [1..5]
