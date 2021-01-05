module Algebraic02 where

-- 【問2】x,y,w,hを表現したRect型を定義して、RectにPointが含まれるかどうかを判定する関数containsを実装してください。
data Point = Point Int Int deriving Show
data Rect = Rect Int Int Int Int deriving Show

contains (Rect x y w h)(Point px py) =
  x <= px && x + w > px && y <= py && y + h > py

main = do
    print $ contains (Rect 2 2 3 3) (Point 1 1)
    print $ contains (Rect 2 2 3 3) (Point 2 2)
    print $ contains (Rect 2 2 3 3) (Point 3 3)
    print $ contains (Rect 2 2 3 3) (Point 4 4)
    print $ contains (Rect 2 2 3 3) (Point 5 5)
