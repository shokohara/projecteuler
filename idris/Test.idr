module Test

import public Problem01

%access export

assertEq : Eq a => (given : a) -> (expected : a) -> IO ()
assertEq g e = if g == e
  then putStrLn "Test Passed"
  else putStrLn "Test Failed"

assertNotEq : Eq a => (given : a) -> (expected : a) -> IO ()
assertNotEq g e = if not (g == e)
  then putStrLn "Test Passed"
  else putStrLn "Test Failed"

testProblem01 : IO ()
testProblem01 = assertEq (sum $ f 9) 23

main : IO ()
main = do
  testProblem01

