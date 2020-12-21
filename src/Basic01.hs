module Basic01 where

-- 【問1】任意のn番目のフィボナッチ数を計算する関数fibをパターンマッチで実装してください。最初の0は0番目とします。
fib 1 = 0 + 1
fib 2 = 0 + 1
fib n = fib (n - 1) + fib (n - 2)

main = do
  print $ fib 7
