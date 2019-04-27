module Lib
    ( someFunc2
    ) where

someFunc2 :: IO ()
--someFunc2 = putStrLn "hmm"
--someFunc2 = print (doubleUs 28 88 + doubleMe 123)
someFunc2 = print conanO'Brien

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
    then x
    else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Connan O'Brien!"