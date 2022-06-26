# prime-bench (wip)

tasty-bench of basic prime algorithms

So far it compares:

- naive isPrime over integers
- Bird's algorithm (taken from [Thinking Functionally with Haskell](https://www.cs.ox.ac.uk/publications/books/functional/))
- the circular algorithm from Colin Runciman's [Function Pearl](https://www.semanticscholar.org/paper/Lazy-Wheel-Sieves-and-Spirals-of-Primes-Runciman/09d512179ed4208604f6d8ddcb1c5f87217ebbe0)
- the [primes](https://hackage.haskell.org/package/primes) library which uses a wheel sieve, also based on the same paper

The benchmarking and `isPrime` are derived from the code in chapter 10 of [Haskell in Depth](https://github.com/bravit/hid-examples/blob/master/benchmarks/primcheck.hs) by Vitaly Bragilevsky.

## Output

```
  isPrime 999999937
    naive:          OK (0.31s)
      584  μs ±  51 μs
    Bird:           OK (0.27s)
      62.1 μs ± 4.2 μs
    circular:       OK (1.04s)
      62.0 μs ± 839 ns
    primes:         OK (0.25s)
      61.8 μs ± 3.2 μs
    primes isPrime: OK (0.13s)
      61.3 μs ± 6.1 μs
  prime 100000
    Bird:           OK (0.80s)
      157  μs ±  14 μs
    circular:       OK (2.38s)
      501  μs ±  29 μs
    primes:         OK (0.25s)
      2.36 ms ± 193 μs
```

## Build

Run with  `cabal run` or `stack run`

## Contribute

Feedback and suggestions welcome
