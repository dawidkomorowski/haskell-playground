module Lib
    ( someFunc2
    ) where

someFunc2 :: IO ()
--someFunc2 = putStrLn "hmm"
--someFunc2 = print (doubleUs 28 88 + doubleMe 123)
--someFunc2 = print conanO'Brien
someFunc2 = print elementAtIndex6InAllLostNumbers

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
    then x
    else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Connan O'Brien!"

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