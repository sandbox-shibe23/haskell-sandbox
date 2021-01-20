module Lamda05 where

-- 【問5】次に示す関数addを定義せずに、呼び出し側で無名関数にインライン展開してください。

add x = \y -> x + y

main = do
    print $ (\x -> \y -> x + y) 1 2
