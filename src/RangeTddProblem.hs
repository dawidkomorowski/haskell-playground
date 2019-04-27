module RangeTddProblem where

isNumberInRange 
    number
    rangeLeft includeLeft 
    rangeRight includeRight 
    = 
        (if includeLeft then number >= rangeLeft else number > rangeLeft)
        &&
        (if includeRight then number <= rangeRight else number < rangeRight)