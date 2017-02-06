module Projecteuler.Problem17 where

resolve :: Integer
resolve = toInteger $ f 1000

f :: Int -> Int
f n = length . filter (' ' /=) . filter ('-' /=) . concat $ f2 <$> [1..n]

f2 :: Int -> String
f2 n =
  fa n ++
    (if 1000 <= n `mod` 10000 && 0 < n `mod` 1000 then " " else "") ++
      fb (n `mod` 1000 `div` 100) (n `mod` 100 `div` 10) (n `mod` 10) ++
        (if 100 <= n `mod` 1000 && 0 < n `mod` 100 then " " else "") ++
          fc (n `mod` 100) ++
            (if n `mod` 100 `div` 10 == 0 || n `mod` 100 `div` 10 == 1 || (n `mod` 100 `div` 10 > 1 && n `mod` 10 == 0) then "" else "-" ++ fe (n `mod` 10)) ++
              (if n `mod` 100 `div` 10 == 0 then fe (n `mod` 10) else "")
  where
    fe 1 = "one"
    fe 2 = "two"
    fe 3 = "three"
    fe 4 = "four"
    fe 5 = "five"
    fe 6 = "six"
    fe 7 = "seven"
    fe 8 = "eight"
    fe 9 = "nine"
    fe _ = ""
    fc x
      | x < 10 = ""
      | x == 10 = "ten"
      | x == 11 = "eleven"
      | x == 12 = "twelve"
      | x == 13 = "thirteen"
      | x == 14 = "fourteen"
      | x == 15 = "fifteen"
      | x == 16 = "sixteen"
      | x == 17 = "seventeen"
      | x == 18 = "eighteen"
      | x == 19 = "nineteen"
      | x < 30 = "twenty"
      | x < 40 = "thirty"
      | x < 50 = "forty"
      | x < 60 = "fifty"
      | x < 70 = "sixty"
      | x < 80 = "seventy"
      | x < 90 = "eithty"
      | x < 100 = "ninety"
      | otherwise = ""
    fb 0 _ _ = ""
    fb x 0 0 = fe x ++ " hundred"
    fb x _ _ = fe x ++ " hundred and"
    fa x
      | x `mod` 10000 `div` 1000 == 0 = ""
      | n `mod` 1000 `div` 100 == 0 && n `mod` 100 `div` 10 == 0 && n `mod` 10 == 0 = fe (n `mod` 10000 `div` 1000) ++ " thousand"
      | otherwise = fe (n `mod` 10000 `div` 1000) ++ " thousand and"

