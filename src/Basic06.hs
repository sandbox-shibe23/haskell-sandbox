module Basic06 where

-- 【問6】点 (p,q) から直線 ax+by=cax+by=c に下した垂線の交点を求める関数perpPointを作成してください。aとbが両方ゼロになると解なしですが、チェックせずに無視してください。
perpPoint (p, q) (a, b, c) = (x, y)
  where
    x = (a * c + b * d) / (a * a + b * b)
    y = (b * c - a * d) / (a * a + b * b)
    d =  b * p - a * q

main = do
  print $ perpPoint (0, 2) (1, -1, 0)
