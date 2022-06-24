module Circular (primes) where

-- https://www.cambridge.org/core/journals/journal-of-functional-programming/article/functional-pearl-lazy-wheel-sieves-and-spirals-of-primes/24D8441CCD9E7CADB05EAFD47540D69C by Colin Runciman
-- https://www.cambridge.org/core/services/aop-cambridge-core/content/view/24D8441CCD9E7CADB05EAFD47540D69C/S0956796897002670a.pdf/functional_pearl_lazy_wheel_sieves_and_spirals_of_primes.pdf p220

primes :: [Integer]
primes = sieve [2..]

sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (p:xs) = p : [x | x <- xs, noFactorIn primes squares x]

noFactorIn :: [Integer] -> [Integer] -> Integer -> Bool
noFactorIn (p:ps) (q:qs) x =
  q > x || x `mod` p > 0 && noFactorIn ps qs x
noFactorIn _ _ _ = True

squares :: [Integer]
squares = [p*p | p <- primes]
