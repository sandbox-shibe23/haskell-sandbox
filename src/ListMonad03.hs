module Lamda06 where

import Control.Monad (join, forM)


-- 【問3】次のコードをjoinとforMで書き替えてください。

--main = do
--    print $ do
--        x <- [1..3]
--        y <- "abc"
--        return (x, y)

main = do
    print $ join $ join $
        forM [1..3] $ \x ->
          forM "abc" $ \y ->
            return (x, y)
