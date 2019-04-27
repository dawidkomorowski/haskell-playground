module RangeTddProblemTests (tests) where

import Test.HUnit
import RangeTddProblem

isNumberInRangeTests = TestList [
    TestCase (assertEqual "4 is not in [5,10]" False 
        (isNumberInRange 4 5 True 10 True)),

    TestCase (assertEqual "7 is in [5,10]" True 
        (isNumberInRange 7 5 True 10 True)),

    TestCase (assertEqual "11 is not in [5,10]" False 
        (isNumberInRange 11 5 True 10 True)),

    TestCase (assertEqual "5 is in [5,10]" True 
        (isNumberInRange 5 5 True 10 True)),

    TestCase (assertEqual "10 is in [5,10]" True 
        (isNumberInRange 10 5 True 10 True)),

    TestCase (assertEqual "5 is in [5,10)" True 
        (isNumberInRange 5 5 True 10 False)),

    TestCase (assertEqual "10 is in (5,10]" True 
        (isNumberInRange 10 5 False 10 True)),

    TestCase (assertEqual "5 is not in (5,10)" False 
        (isNumberInRange 5 5 False 10 False)),

    TestCase (assertEqual "10 is not in (5,10)" False 
        (isNumberInRange 10 5 False 10 False))
    ]

tests = TestLabel "isNumberInRange" isNumberInRangeTests