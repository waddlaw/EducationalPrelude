{-# LANGUAGE NoImplicitPrelude #-}

module EducationalPrelude () where
  -- ( (NoPrelude.+), (NoPrelude.-), (NoPrelude.*)
  -- , (NoPrelude.==)
  -- , module Import
  -- ) where

import Prelude as Import
  ( Int, Char, Bool(..), Double
  , (&&), (||), not
  , (++), (!!), head, tail, last, init, reverse, take, drop
  , cycle, repeat, replicate
  , fst, snd, zip
  )
import qualified Prelude as P
  ( (+), (*), (-)   -- ^ Num
  , (/)             -- ^ Fractional
  , (==), (/=)      -- ^ Eq
  , (>), (>=), (<), min, max   -- ^ Ord
  , succ            -- ^ Enum
  , div, mod             -- ^ Integral
  , null, length, maximum, minimum, elem, sum, product         -- ^ Foldable
  , fromInteger, Integer, fromIntegral
  , fromRational, Rational
  , odd, (^)
  )
import Data.Bool (bool)

-- 優先度
infix 4 ==, /=, >, >=, <
infixl 6 +, -
infixl 7 *, /
infixr 8 ^

-- | Num
(+), (*), (-) :: Int -> Int -> Int
(+) = (P.+)
(*) = (P.*)
(-) = (P.-)

-- | Fractional
(/) :: Int -> Int -> Double
a / b = P.fromIntegral a P./ P.fromIntegral b

-- | Integral
div, mod :: Int -> Int -> Int
div = P.div
mod = P.mod

-- | Eq
(==), (/=) :: Int -> Int -> Bool
(==) = (P.==)
(/=) = (P./=)

-- | Ord
(>), (>=), (<) :: Int -> Int -> Bool
(>) = (P.>)
(>=) = (P.>=)
(<) = (P.<)
min, max :: Int -> Int -> Int
min = P.min
max = P.max

-- | Enum
succ :: Int -> Int
succ = P.succ

-- | Foldable
null :: [a] -> Bool
null = P.null

length :: [a] -> Int
length = P.length

maximum, minimum :: [Int] -> Int
maximum = P.maximum
minimum = P.minimum

sum, product :: [Int] -> Int
sum = P.sum
product = P.product

elem :: Int -> [Int] -> Bool 
elem = P.elem

-- |
-- :t 1 を Int にするために必要
-- :t 1 は :t fromInteger 1 と同じ
fromInteger :: P.Integer -> Int
fromInteger = P.fromInteger

-- |
-- :t 1.0 を Double にするために必要
-- :t 1.0 は :t fromRational 1.0 と同じ
fromRational :: P.Rational -> Double
fromRational = P.fromRational

-- | if ... then ... else の際に呼ばれる
ifThenElse :: Bool -> a -> a -> a
ifThenElse b x y = bool y x b

odd :: Int -> Bool
odd = P.odd

(^) :: Int -> Int -> Int
(^) = (P.^)