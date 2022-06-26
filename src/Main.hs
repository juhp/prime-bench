-- SPDX-License-Identifier: BSD-3-Clause

module Main (main) where

import Test.Tasty.Bench
import qualified Data.Numbers.Primes as Primes

import IsPrime (isPrime)
import qualified Bird
import qualified Circular

primeNumber :: Integer
primeNumber = 999999937 -- 98765431 -- 78680101 -- 16183

noPrime :: Int
noPrime = 100000

main :: IO ()
main =
  defaultMain $
  [
    bgroup ("isPrime " ++ show primeNumber)
    [
      bench "naive" $ whnf (isPrime [2..]) primeNumber
    , bench "Bird" $ whnf (isPrime Bird.primes) primeNumber
    , bench "circular" $ whnf (isPrime Circular.primes) primeNumber
    , bench "primes" $ whnf (isPrime Primes.primes) primeNumber
    , bench "primes isPrime" $ whnf Primes.isPrime primeNumber
    ]
  ,
    bgroup ("prime " ++ show noPrime)
    [
      bench "Bird" $ whnf (Bird.primes !!) noPrime
    , bench "circular" $ whnf (Circular.primes !!) noPrime
    , bench "primes" $ whnf ((Primes.primes :: [Integer]) !!) noPrime
    ]
  ]
