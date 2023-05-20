import Data.List (find)
import Data.Maybe (fromJust)

divs :: Integer -> Integer -> Bool
divs n m = n `mod` m == 0

isPrime :: [Integer] -> Integer -> Bool
isPrime xs n = all (==False) $ map (divs n) xs

primes :: [Integer]
primes = 2 : seive [2] 
  where 
    seive xs = x : seive (xs ++ [x])
      where
        x = fromJust $ find (isPrime xs) [(last xs)..]

main :: IO ()
main = print $ take 10001 primes
