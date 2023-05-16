main :: IO ()
div_by_n :: Int -> Int -> Bool
div_by_n x m = (mod x m) == 0

div_by_3_or_5 x = div_by_n x 3 || div_by_n x 5

main = print (sum (filter div_by_3_or_5 [1..999]))

