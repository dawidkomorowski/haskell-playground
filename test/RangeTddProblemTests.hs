module RangeTddProblemTests (tests) where

import Test.HUnit
import RangeTddProblem

test1 = TestCase (assertEqual "0 is not in [5,10]" False 
    (isNumberInRange 0 5 True 10 True))

isNumberInRangeTests = TestList [
        test1
    ]

tests = TestLabel "isNumberInRange" isNumberInRangeTests