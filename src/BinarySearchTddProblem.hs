module BinarySearchTddProblem (binarySearch) where

import Debug.Trace

binarySearch value sortedList = binarySearchInternal value sortedList 0

centralIndex sortedList = (length sortedList) `div` 2
centralElement sortedList = sortedList !! centralIndex sortedList
left sortedList = take (centralIndex sortedList) sortedList
right sortedList = drop (centralIndex sortedList) sortedList

-- Debug.Trace.trace (show sortedList) ()

binarySearchInternal value sortedList indexOffset = 
    if null sortedList then -1
    else if centralElement sortedList == value then centralIndex sortedList
    else if centralElement sortedList > value then binarySearchInternal value (left sortedList) 0
    else binarySearchInternal value (right sortedList) (indexOffset + centralIndex sortedList)