module Basic04_reverse where

-- 【問4】sum, product, take, drop, reverseと同じ機能の関数を再実装してください。関数名には'を付けてください。
reverse' [] = []
-- リストのheadが再帰しながらtailに入る
reverse' (x:xs) = reverse' xs ++ [x]

main = do
  print $ reverse' [1..5]
