-- SPDX-License-Identifier: BSD-3-Clause

module Main (main) where

import Test.Tasty.Bench
--import Criterion.Main (defaultMain, bench, whnf)

import IsPrime (isPrime)
import qualified Circular
import qualified Primes

primeNumber :: Integer
primeNumber = 999999937 -- 98765431 -- 78680101 -- 16183

main :: IO ()
main =
  defaultMain
  [
    bench "declarative isPrime" $ whnf (isPrime [2..]) primeNumber
  , bench "circular isPrime" $ whnf (isPrime Circular.primes) primeNumber
  , bench "primes isPrime" $ whnf Primes.isPrime primeNumber
  , bench "primes primes" $ whnf (isPrime Primes.primes) primeNumber
  ]
