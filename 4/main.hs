n :: Integer
n = 999
nums :: [Integer]
nums = [ x*y | x <- [1..n], y <- [1..n]]

digitListOfInteger :: Integer -> [Integer]
digitListOfInteger n = aux [] n where
  aux acc n = case n `divMod` 10 of
    (0,b) -> b : acc
    (a,b) -> aux (b : acc) a
integerOfDigitList :: [Integer] -> Integer
integerOfDigitList xs = aux 1 (reverse xs) where
  aux factor [x] = factor*x
  aux factor (x:xs) = factor*x + aux (factor*10) xs

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = reverse xs == xs


main :: IO ()
main = print $ foldr max 0 $ map integerOfDigitList $ filter isPalindrome $ map digitListOfInteger nums
