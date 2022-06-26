{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

-- from chapter 9 of https://www.cs.ox.ac.uk/publications/books/functional/

module Bird (primes) where

-- should really use an infinite list type

primes :: [Integer]
primes = 2:([3..] \\ composites)
  where
    composites = mergeAll [map (p*) [p..] | p <- primes]

    (x:xs) \\ (y:ys)
      | x<y   = x:(xs \\ (y:ys))
      | x==y  = xs \\ ys
      | x>y   = (x:xs) \\ ys

    mergeAll (xs:xss) = xmerge xs (mergeAll xss)

    xmerge (x:xs) ys = x:merge xs ys

    merge :: Ord a => [a] -> [a] -> [a]
    merge (x:xs) (y:ys)
      | x<y  = x:merge xs (y:ys)
      | x==y = x:merge xs ys
      | x>y  = y:merge (x:xs) ys
