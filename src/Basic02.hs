module Basic02 where

-- 【問2】問1で実装した関数をガードで書き直してください。
fib n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fib (n - 1) + fib (n - 2)

main = do
  print $ fib 5
