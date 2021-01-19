module Lamda04 where

-- 【問4】次に示す関数fとaddを定義せずに、呼び出し側で無名関数にインライン展開してください。
f g = g 1 2
add x y = x + y

main = do
    print $ (\g -> g 1 2 )$ \x y ->  x + y