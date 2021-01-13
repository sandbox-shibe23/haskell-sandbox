module Action02 where

-- 【問2】階乗を求める関数factを、アクションを返す関数に書き換えてください。

fact 0 = return 1
fact n | n > 0 = do
  n' <- fact(n - 1)
  return $ n * n'

main = do
    print =<< fact 5
