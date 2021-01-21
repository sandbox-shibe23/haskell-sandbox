module Lamda06 where

-- 【問6】次に示す関数combineを、引数1つずつに分割してネストさせたラムダ式で書き換えてください。

combine = \a -> \b -> \c -> a:b:[c]

main = do
    let a = combine 1
        b = a 2
        c = b 3
    print c
    print $ combine 'a' 'b' 'c'
