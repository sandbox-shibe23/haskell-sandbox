module Algebraic04 where

-- 【問4】問2の解答をレコード構文で書き直してください。
data Point = Point { px :: Int, py :: Int } deriving Show
data Rect = Rect { x :: Int, y :: Int, w :: Int, h :: Int } deriving Show

contains (Rect x y w h)(Point px py) =
  x <= px && x + w > px && y <= py && y + h > py

main = do
    print $ contains (Rect 2 2 3 3) (Point 1 1)
    print $ contains (Rect 2 2 3 3) (Point 2 2)
    print $ contains (Rect 2 2 3 3) (Point 3 3)
    print $ contains (Rect 2 2 3 3) (Point 4 4)
    print $ contains (Rect 2 2 3 3) (Point 5 5)
