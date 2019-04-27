import Test.HUnit
import Lib

test1 = TestCase (assertEqual "hmm?" 2 3)

tests = TestList [TestLabel "test1 name" test1]

main :: IO Counts
main = runTestTT (tests)