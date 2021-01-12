module Action01 where
import System.Random

randomAlpha = randomRIO ('a', 'z')

-- 【問1】ランダムにアルファベット小文字の1文字表示を繰り返してください。'z'が現れたら"END"と表示して終了してください。
func = do
  r <- randomAlpha
  print r
  if r == 'z' then print "END" else func

main = do
    func
