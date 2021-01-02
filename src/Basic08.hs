module Basic08 where

-- 【問8】バブルソートを実装してください。

listToSort = [13, 2, 3, 14, 17, 4, 1, 5, 16, 12, 9, 10, 15, 8, 7, 11, 18, 19, 6, 20]

bubbleSort:: (Ord a) => [a] -> [a]
bubbleSort lst = if bpassed == lst then lst
                    else bubbleSort bpassed
                    where bpassed = bubblePass lst

-- 再帰の終了条件を実装 : xが空 or リストの値が1つのときに自身を返す
bubblePass :: (Ord a) => [a] -> [a]
bubblePass [] = []
bubblePass [x] = [x]
bubblePass(x1:x2:xs) = if x1 > x2
                    then [x2] ++ (bubblePass ([x1] ++ xs))
                    else [x1] ++ (bubblePass ([x2] ++ xs))

main = do
    putStrLn $ "Unsorted: "++ show listToSort
    putStrLn $ "Sorted: "++ show (bubbleSort listToSort)
