module Basic03 where

-- 【問3】問1で実装した関数をcase-ofで書き直してください。無限ループを防ぐためガードを追加してください。
fib n = case n of
  0 -> 0
  1 -> 1
  _ | n > 0 -> fib (n - 1) + fib (n - 2)

main = do
  print $ fib 7
