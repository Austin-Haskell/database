module Main where

import Data.Time

data Fruit = Peach
           | Plum
           | Apple
           | Blackberry
           deriving (Eq, Ord, Show)

data Jam = Jam { fruit :: Fruit, jars :: Integer, date :: Day }
               deriving (Eq, Ord, Show)

row1 = Jam Peach 5 (fromGregorian 2016 8 15)
row2 = Jam Plum 8 (fromGregorian 2015 7 13)
row3 = Jam Apple 10 (fromGregorian 2015 10 8)
row4 = Jam Blackberry 4 (fromGregorian 2016 6 23)

allJam :: [Jam]
allJam = [row1, row2, row3, row4]
-- pretend this is something you're pulling from a database
-- a list of all the stuff you have stored in there

getDates :: [Jam] -> [Day]
getDates xs = map date xs
-- this should give us back a list of dates when we made jam

findOldest :: [Jam] -> Day
findOldest = undefined
-- the oldest jam, but only the date
-- ok but we want it to tell us what type the jam is that is the oldest, not just the day

oldestJam :: [Jam] -> Jam
oldestJam = undefined
-- this should give us back the whole record of the oldest jam, fruit name and all


totalJam :: [Jam] -> Integer
totalJam = undefined
-- this should total all the jars we have

totalFruit :: Fruit -> [Jam] -> Integer
totalFruit = undefined
-- this should answer the question, "how much peach do i have?"

filterFruit :: [Jam] -> [Fruit]
filterFruit = undefined
-- should be able to find how many rows of each fruit type we have
-- (e.g., if we made peace on two different dates, they'd be in different rows, so we want to find out how many peach records or rows there are)
