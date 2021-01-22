module Lamda06 where

-- 【問1】[と]は使わないで、returnを使って[1, 2, 3]を作ってください。

main = do
  print $ 1:2:return 3
--    let a = return 1 :: [] Int
--        b = return 2 :: [] Int
--        c = return 3 :: [] Int
--    print $ a ++ b ++ c
