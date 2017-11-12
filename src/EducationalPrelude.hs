{-# LANGUAGE NoImplicitPrelude #-}

module EducationalPrelude () where

import Prelude as Import
  ( Int, Char, Bool(..), Double
  , (&&), (||), not
  , (++), (!!), head, tail, last, init, reverse, take, drop
  , cycle, repeat, replicate
  , fst, snd, zip
  , (+), (*), (-)   -- ^ Num
  , (/)             -- ^ Fractional
  , (==), (/=)      -- ^ Eq
  , (>), (>=), (<), min, max   -- ^ Ord
  , succ            -- ^ Enum
  , div, mod             -- ^ Integral
  )
import qualified Prelude as P
  ( null, length, maximum, minimum, elem, sum, product         -- ^ Foldable
  , fromInteger, Integer, fromIntegral
  , odd, (^)
  , Eq, Num, Ord
  , Rational, fromRational, fromInteger
  )
import Data.Bool (bool)

-- | Foldable
null :: [a] -> Bool
null = P.null

length :: [a] -> Int
length = P.length

maximum, minimum :: P.Ord a => [a] -> a
maximum = P.maximum
minimum = P.minimum

sum, product :: P.Num a => [a] -> a
sum = P.sum
product = P.product

elem :: P.Eq a => a -> [a] -> Bool 
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

(^) :: P.Num a => a -> Int -> a
(^) = (P.^)