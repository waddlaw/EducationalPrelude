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
  , fromInteger, fromRational, Rational
  , odd, (^)
  )
import qualified Prelude as P
  ( null, length, maximum, minimum, elem, sum, product         -- ^ Foldable
  , fromInteger, Integer, fromIntegral
  , Eq, Num, Ord
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

-- | if ... then ... else の際に呼ばれる
ifThenElse :: Bool -> a -> a -> a
ifThenElse b x y = bool y x b
