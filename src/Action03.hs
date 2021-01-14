module Action03 where

-- 【問3】リストをランダムに並べ替える関数shuffleを実装してください。
import System.Random

shuffle [] = return []
shuffle xs = do
  n <- randomRIO (0, length xs - 1) :: IO Int
  xs' <- shuffle $ take n xs ++ drop (n + 1) xs
  return $ ( xs !! n ) : xs'

main = do
    print =<< shuffle [1..9]
