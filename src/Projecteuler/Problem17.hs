module Projecteuler.Problem17 where

resolve :: Integer
resolve = toInteger $ f 1000

f :: Int -> Int
f n = length . filter (' ' /=) . filter ('-' /=) . concat $ f2 . f3 <$> [1..n]

f3 :: Int -> (Int, Int, Int, Int)
f3 n = (n `mod` 10000 `div` 1000, n `mod` 1000 `div` 100, n `mod` 100 `div` 10, n `mod` 10)

f2 :: (Int, Int, Int, Int) -> String
f2 (a, b, c, d) =
  fa (a, b, c, d) ++
    (if a == 0 || (a == 0 && (b /= 0 || c /= 0 || d /= 0)) || (a > 0 && b == 0 && c == 0 && d == 0) then "" else " ") ++
      fb (a, b, c, d) ++
        (if (a == 0 && b == 0) || (a == 0 && c == 0 && d == 0) || (a > 0 && b == 0 && c == 0 && d == 0) || (a > 0 && b == 0 && c == 0 && d > 0) || (a > 0 && b == 0 && c > 0 && d > 0) then "" else " ") ++
          fc (a, b, c, d) ++
            if (c == 0 && d == 0) || c == 1 || d == 0 then "" else (if c == 0 then "" else "-") ++ fe d
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
    fc (_, _, 1, 0) = "ten"
    fc (_, _, 1, 1) = "eleven"
    fc (_, _, 1, 2) = "twelve"
    fc (_, _, 1, 3) = "thirteen"
    fc (_, _, 1, 4) = "fourteen"
    fc (_, _, 1, 5) = "fifteen"
    fc (_, _, 1, 6) = "sixteen"
    fc (_, _, 1, 7) = "seventeen"
    fc (_, _, 1, 8) = "eighteen"
    fc (_, _, 1, 9) = "nineteen"
    fc (_, _, 2, _) = "twenty"
    fc (_, _, 3, _) = "thirty"
    fc (_, _, 4, _) = "forty"
    fc (_, _, 5, _) = "fifty"
    fc (_, _, 6, _) = "sixty"
    fc (_, _, 7, _) = "seventy"
    fc (_, _, 8, _) = "eithty"
    fc (_, _, 9, _) = "ninety"
    fc (_, _, _, _) = ""
    fb (_, 0, _, _) = ""
    fb (_, x, 0, 0) = fe x ++ " hundred"
    fb (_, x, _, _) = fe x ++ " hundred and"
    fa (0, _, _, _) = ""
    fa (x, 0, 0, 0) = fe x ++ " thousand"
    fa (x, _, _, _) = fe x ++ " thousand and"


