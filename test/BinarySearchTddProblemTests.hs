module BinarySearchTddProblemTests (tests) where

import Test.HUnit
import BinarySearchTddProblem
import Debug.Trace

binarySearchTests = TestList [
    TestCase (assertEqual "3 in []" (-1 ) (binarySearch 3 [])),
    TestCase (assertEqual "3 in [1]" (-1 ) (binarySearch 3 [1])),
    TestCase (assertEqual "1 in [1]" ( 0 ) (binarySearch 1 [1])),

    TestCase (assertEqual "1 in [1, 3, 5]" ( 0 ) (binarySearch 1 [1, 3, 5])),
    TestCase (assertEqual "3 in [1, 3, 5]" ( 1 ) (binarySearch 3 [1, 3, 5])),
    TestCase (assertEqual "5 in [1, 3, 5]" ( 2 ) (binarySearch 5 [1, 3, 5])),
    TestCase (assertEqual "0 in [1, 3, 5]" (-1 ) (binarySearch 0 [1, 3, 5])),
    TestCase (assertEqual "2 in [1, 3, 5]" (-1 ) (binarySearch 2 [1, 3, 5])),
    TestCase (assertEqual "4 in [1, 3, 5]" (-1 ) (binarySearch 4 [1, 3, 5])),
    TestCase (assertEqual "6 in [1, 3, 5]" (-1 ) (binarySearch 6 [1, 3, 5])),

    TestCase (assertEqual "1 in [1, 3, 5, 7]" ( 0 ) (binarySearch 1 [1, 3, 5, 7])),
    TestCase (assertEqual "3 in [1, 3, 5, 7]" ( 1 ) (binarySearch 3 [1, 3, 5, 7])),
    TestCase (assertEqual "5 in [1, 3, 5, 7]" ( 2 ) (binarySearch 5 [1, 3, 5, 7])),
    TestCase (assertEqual "7 in [1, 3, 5, 7]" ( 3 ) (binarySearch 7 [1, 3, 5, 7])),
    TestCase (assertEqual "0 in [1, 3, 5, 7]" (-1 ) (binarySearch 0 [1, 3, 5, 7])),
    TestCase (assertEqual "2 in [1, 3, 5, 7]" (-1 ) (binarySearch 2 [1, 3, 5, 7])),
    TestCase (assertEqual "4 in [1, 3, 5, 7]" (-1 ) (binarySearch 4 [1, 3, 5, 7])),
    TestCase (assertEqual "6 in [1, 3, 5, 7]" (-1 ) (binarySearch 6 [1, 3, 5, 7])),
    TestCase (assertEqual "8 in [1, 3, 5, 7]" (-1 ) (binarySearch 8 [1, 3, 5, 7]))
    ]

tests = TestLabel "binarySearch" binarySearchTests