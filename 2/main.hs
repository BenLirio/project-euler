fibSeq :: [Integer]
fibSeq = 0 : 1 : zipWith (+) fibSeq (tail fibSeq)

evenFibSeq :: [Integer]
evenFibSeq = filter even fibSeq

lessThan4Mil :: [Integer]
lessThan4Mil = takeWhile (<= 4000000) evenFibSeq

sumOfEvenFibSeqLessThan4Mil :: Integer
sumOfEvenFibSeqLessThan4Mil = sum lessThan4Mil

main :: IO ()
main = print sumOfEvenFibSeqLessThan4Mil