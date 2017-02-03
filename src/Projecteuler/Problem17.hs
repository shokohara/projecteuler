module Projecteuler.Problem17 where

resolve :: Integer
resolve = toInteger $ f 1000

f :: Int -> Int
f n = length . filter (' ' /=) . filter ('-' /=) . concat $ f2 . f3 <$> [1..n]

f3 :: Int -> (Int, Int, Int, Int)
f3 n = (n `mod` 10000 `div` 1000, n `mod` 1000 `div` 100, n `mod` 100 `div` 10, n `mod` 10)

f2 :: (Int, Int, Int, Int) -> String
f2 (a, b, c, d) =
  let n = a * 1000 + b * 100 + c * 10 + d in
      fa a b c d ++
        (if 1000 <= n `mod` 10000 && 0 < n `mod` 1000 then " " else "") ++
          fb b c d ++
            (if 100 <= n `mod` 1000 && 0 < n `mod` 100 then " " else "") ++
              fc c d ++
                if n `mod` 100 == 0 || n `mod` 100 `div` 10 == 1 || n `mod` 10 == 0 then "" else (if c == 0 then "" else "-") ++ fe d
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
    fc 1 0 = "ten"
    fc 1 1 = "eleven"
    fc 1 2 = "twelve"
    fc 1 3 = "thirteen"
    fc 1 4 = "fourteen"
    fc 1 5 = "fifteen"
    fc 1 6 = "sixteen"
    fc 1 7 = "seventeen"
    fc 1 8 = "eighteen"
    fc 1 9 = "nineteen"
    fc 2 _ = "twenty"
    fc 3 _ = "thirty"
    fc 4 _ = "forty"
    fc 5 _ = "fifty"
    fc 6 _ = "sixty"
    fc 7 _ = "seventy"
    fc 8 _ = "eithty"
    fc 9 _ = "ninety"
    fc _ _ = ""
    fb 0 _ _ = ""
    fb x 0 0 = fe x ++ " hundred"
    fb x _ _ = fe x ++ " hundred and"
    fa 0 _ _ _ = ""
    fa x 0 0 0 = fe x ++ " thousand"
    fa x _ _ _ = fe x ++ " thousand and"


