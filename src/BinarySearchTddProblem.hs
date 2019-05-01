module BinarySearchTddProblem (binarySearch) where

binarySearch value sortedList = binarySearchInternal value sortedList 0

centralIndex sortedList = (length sortedList) `div` 2
centralElement sortedList = sortedList !! centralIndex sortedList
rightFromCentralIndex sortedList = centralIndex sortedList + 1
left sortedList = take (centralIndex sortedList) sortedList
right sortedList = drop (rightFromCentralIndex sortedList) sortedList


binarySearchInternal value sortedList indexOffset = 
    if null sortedList then -1
    else if centralElement sortedList == value then indexOffset + centralIndex sortedList
    else if centralElement sortedList > value then binarySearchInternal value (left sortedList) 0
    else binarySearchInternal value (right sortedList) (indexOffset + rightFromCentralIndex sortedList)