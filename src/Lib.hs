module Lib
    ( someFunc2
    ) where

someFunc2 :: IO ()
--someFunc2 = putStrLn "hmm"
--someFunc2 = print (doubleUs 28 88 + doubleMe 123)
--someFunc2 = print conanO'Brien
--someFunc2 = print elementAtIndex6InAllLostNumbers
someFunc2 = print simpleReplicate

-- Baby's first functions
doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
    then x
    else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Connan O'Brien!"

-- An intro to lists
lostNumbers = [4,8,15,16,23,42]
lostNumbers2 = [0,1,2,3]
allLostNumbers = lostNumbers ++ lostNumbers2
fiveAndAllLostNumbers = 5 : allLostNumbers
elementAtIndex6InAllLostNumbers = allLostNumbers !! 6

listHead = head allLostNumbers
listTail = tail allLostNumbers
listLast = last allLostNumbers
listInit = init allLostNumbers
listLength = length allLostNumbers
listIsEmpty = null allLostNumbers
reversedList = reverse allLostNumbers
first3Elements = take 3 allLostNumbers
allButFirst3Elements = drop 3 allLostNumbers
maxNumber = maximum allLostNumbers
minNumber = minimum allLostNumbers
sumOfNumbers = sum allLostNumbers
productOfNumbers = product allLostNumbers
_4IsAnElementOfList = elem 4 allLostNumbers

-- Texas ranges
simpleRange = [13..29]
rangeWithStep = [3,6..18]
reversedRange = [20,19..1]
simpleInfiniteRange = take 10 [1,2..]
simpleCycle = take 10 (cycle [1,3,5])
simpleRepeat = take 10 (repeat 5)
simpleReplicate = replicate 10 5