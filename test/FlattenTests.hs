module FlattenTests (tests) where

import Test.HUnit
import Flatten

flattenTests = TestList [
    TestCase (assertEqual "flatten [] = []" ([] :: [Integer]) 
        (flatten [])),

    TestCase (assertEqual "flatten [[],[],[]] = []" ([] :: [Integer]) 
        (flatten [[],[],[]])),
    
    TestCase (assertEqual "flatten [[1]] = [1]" ([1]) 
        (flatten [[1]])),
    
    TestCase (assertEqual "flatten [[1,2,3]] = [1,2,3]" ([1,2,3]) 
        (flatten [[1,2,3]])),
    
    TestCase (assertEqual "flatten [[1],[2],[3]] = [1,2,3]" ([1,2,3]) 
        (flatten [[1],[2],[3]])),
    
    TestCase (assertEqual "flatten [[1,2],[3],[4,5,6]] = [1,2,3,4,5,6]" ([1,2,3,4,5,6]) 
        (flatten [[1,2],[3],[4,5,6]])),
    
    TestCase (assertEqual "flatten [[[1,2],[3]],[[4,5]],[[],[7,8],[9]]] = [[1,2],[3],[4,5],[],[7,8],[9]]" ([[1,2],[3],[4,5],[],[7,8],[9]]) 
        (flatten [[[1,2],[3]],[[4,5]],[[],[7,8],[9]]]))
    ]


tests = TestLabel "flatten" flattenTests