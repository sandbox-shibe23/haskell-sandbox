module Basic01 where

-- 【問1】任意のn番目のフィボナッチ数を計算する関数fibをパターンマッチで実装してください。最初の0は0番目とします。
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

main = do
  print $ fib 7
