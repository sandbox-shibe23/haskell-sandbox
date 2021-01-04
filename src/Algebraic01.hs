module Algebraic01 where

-- 【問1】光の三原色と、2つの色を混合する関数mixを定義してください。混ぜることによってできる色も定義の対象とします。ただし同じ成分同士は強め合わないものとします。
data Colors = Cyan | Magenta | Yellow | Green | Blue | Red | White | Black deriving (Show, Eq)

-- 原色 or 混色どうしの組み合わせしか使わないものとする、Whiteは全ての組み合わせでWhiteになるとする
mix Cyan Magenta = Blue
mix Cyan Yellow = Green
mix Magenta Yellow = Red
mix Magenta Cyan = Blue
mix Yellow Cyan = Green
mix Yellow Magenta = Red
mix Green Blue = Black
mix Green Red = Black
mix Red Blue = Black
mix Red Green = Black
mix Blue Green = Black
mix Blue Red = Black
mix White _ = White
mix _ White = White
mix c1 c2
  | c1 == c2 = c1
  | otherwise = mix c2 c1

main = do
  print $ mix Cyan Magenta
  print $ mix White Green
  print $ mix Green White
