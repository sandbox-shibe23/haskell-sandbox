module Lamda01 where

-- 【問1】次に示す関数factをラムダ式とcase～ofで書き換えてください。
fact = \n -> case n of
              0 -> 1
              _ | n > 0 -> n * fact (n - 1)

main = do
    print $ fact 5
