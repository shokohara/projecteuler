module Main

import Problem01
--import Data.SortedMap
import Data.Vect
--solutions : Map Integer Integer
--solutions = Map.fromList [
--                           (1, Problem01.resolve)
--                         , (2, Problem02.resolve)
--                         , (3, Problem03.resolve)
--                         , (4, Problem04.resolve)
--                         , (5, Problem05.resolve)
--                         , (6, Problem06.resolve)
--                         , (7, Problem07.resolve)
--                         , (8, Problem08.resolve)
--                         , (9, Problem09.resolve)
--                         ]

resolve : Int
resolve = sum $ f 999

main : IO ()
main = putStrLn . show $ Problem01.resolve

--solution :: Integer -> Maybe Integer
--solution = flip Map.lookup solutions
--
--main :: IO ()
--main = do
--  args <- getArgs
--  case args of
--    [number] -> case solution (read number :: Integer) of
--      Just v -> print v
--      Nothing -> putStrLn "There is no solution yet for this problem"
--    _ -> usage >> exitFailure
--  where
--    usage = putStrLn "Usage: stack runghc app/Main.hs [number]"
--
