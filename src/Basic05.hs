module Basic05 where

-- 【問5】productを使ってfact（階乗）を実装してください。
fact n = product [1..n]

--fact n
--  | n == 0 = 1
--  | otherwise = n * product [fact(n - 1)]

main = do
  print $ fact 4
