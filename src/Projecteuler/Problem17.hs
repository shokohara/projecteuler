module Projecteuler.Problem17 where

resolve :: Integer
resolve = toInteger $ f 1000

debug = mapM_ putStrLn (fmap (f2 . f3) [1..1000])

f n = length . filter(' ' /=) . filter('-' /=) . concat $ fmap (f2 . f3) [1..n]

f3 :: Int -> (Int, Int, Int, Int)
f3 n = (n `mod` 10000 `div` 1000, n `mod` 1000 `div` 100, n `mod` 100 `div` 10, n `mod` 10)

f2 :: (Int, Int, Int, Int) -> String
--f2 (a,b,c,d) = (if a `div` 1000 /= 0 then (fa (a `div` 1000) ++ " thousand") else "") ++ (if d /= 0 then fa d else "")
f2 (a, b, c, d) =
  fa (a, b, c, d) ++
    (if a == 0 then "" else " ") ++
      fb (a, b, c, d) ++
        (if a == 0 && b == 0 || c == 0 && d == 0 then "" else " ") ++
          fc (a, b, c, d) ++
            (if c == 0 || c == 1 || (c > 1 && d == 0) then "" else "-" ++ fe (a, b, c, d)) ++
              fd (a, b, c, d)
  where
    fe (_, _, _, 0) = ""
    fe (_, _, _, 1) = "one"
    fe (_, _, _, 2) = "two"
    fe (_, _, _, 3) = "three"
    fe (_, _, _, 4) = "four"
    fe (_, _, _, 5) = "five"
    fe (_, _, _, 6) = "six"
    fe (_, _, _, 7) = "seven"
    fe (_, _, _, 8) = "eight"
    fe (_, _, _, 9) = "nine"
    fd (0, 0, 0, 1) = "one"
    fd (0, 0, 0, 2) = "two"
    fd (0, 0, 0, 3) = "three"
    fd (0, 0, 0, 4) = "four"
    fd (0, 0, 0, 5) = "five"
    fd (0, 0, 0, 6) = "six"
    fd (0, 0, 0, 7) = "seven"
    fd (0, 0, 0, 8) = "eight"
    fd (0, 0, 0, 9) = "nine"
    fd (_, _, _, _) = ""
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
    fb (_, a, 0, 0) = fd (0, 0, 0, a) ++ " hundred"
    fb (_, a, _, _) = fd (0, 0, 0, a) ++ " hundred and"
    fb (_, _, _, _) = ""
    fa (0, _, _, _) = ""
    fa (a, _, _, _) = fd (0, 0, 0, a) ++ " thousand"
    fa (_, _, _, _) = ""

