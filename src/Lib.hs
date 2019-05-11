module Lib
    ( someFunc2
    ) where

someFunc2 :: IO ()
--someFunc2 = putStrLn "hmm"
--someFunc2 = print (doubleUs 28 88 + doubleMe 123)
--someFunc2 = print conanO'Brien
--someFunc2 = print elementAtIndex6InAllLostNumbers
--someFunc2 = print simpleReplicate
someFunc2 = print nested

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

-- I'm a list comprehension
simpleMapping = [x*2 | x <- [1..10]]
mappingWithPredicate = [x*2 | x <- [1..10], x*2 >= 12]
filtering = [x | x <- [50..100], x `mod` 7 == 3]
complexFilter numbers = [if x > 10 then "BANG!" else "BOOM!" | x <- numbers, odd x ]
numbers10To20But13And15And19 = [x | x <- [10..20], x /= 13, x/= 15, x/= 19]
twoInputLists = [x*y | x <- [2,5,10], y <- [8,10,11]]
moreThan50 = [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]
nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
pairs = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
nested = [[x | x <- xs, even x] | xs <- xxs]