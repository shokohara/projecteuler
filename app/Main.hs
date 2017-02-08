module Main where

import Data.Map (Map)
import qualified Data.Map as Map
import qualified Projecteuler.Problem01 as P01
import qualified Projecteuler.Problem02 as P02
import qualified Projecteuler.Problem03 as P03
import qualified Projecteuler.Problem04 as P04
import qualified Projecteuler.Problem05 as P05
import qualified Projecteuler.Problem06 as P06
import qualified Projecteuler.Problem07 as P07
import qualified Projecteuler.Problem08 as P08
import qualified Projecteuler.Problem09 as P09
import qualified Projecteuler.Problem10 as P10
import qualified Projecteuler.Problem11 as P11
import qualified Projecteuler.Problem13 as P13
import qualified Projecteuler.Problem14 as P14
import qualified Projecteuler.Problem15 as P15
import qualified Projecteuler.Problem16 as P16
import qualified Projecteuler.Problem17 as P17
import qualified Projecteuler.Problem18 as P18
import System.Environment (getArgs)
import System.Exit (exitFailure)

solutions :: Map Integer Integer
solutions = Map.fromList [
                           (1, P01.resolve)
                         , (2, P02.resolve)
                         , (3, P03.resolve)
                         , (4, P04.resolve)
                         , (5, P05.resolve)
                         , (6, P06.resolve)
                         , (7, P07.resolve)
                         , (8, P08.resolve)
                         , (9, P09.resolve)
                         , (10, P10.resolve)
                         , (11, P11.resolve)
                         , (13, P13.resolve)
                         , (14, P14.resolve)
                         , (15, P15.resolve)
                         , (16, P16.resolve)
                         , (17, P17.resolve)
                         , (18, P18.resolve)
                         ]

solution :: Integer -> Maybe Integer
solution = flip Map.lookup solutions

main :: IO ()
main = do
  args <- getArgs
  case args of
    [number] -> case solution (read number :: Integer) of
      Just v -> print v
      Nothing -> putStrLn "There is no solution yet for this problem"
    _ -> usage >> exitFailure
  where
    usage = putStrLn "Usage: stack runghc app/Main.hs [number]"

