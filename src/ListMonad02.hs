module Lamda06 where

import Control.Monad (join)


-- 【問2】次に示す関数joinの型から仕様を推定して、コードで検証してください。
--  join :: Monad m => m (m a) -> m a

main = do
  print $ join [[1, 2], [3]]
