# prime-bench (wip)

tasty-bench of basic prime algorithms

So far just compares the [primes](https://hackage.haskell.org/package/primes)
library which uses a wheel sieve, with a naive declarative isPrime.

Derived from the code in chapter 10 of [Haskell in Depth](https://github.com/bravit/hid-examples/blob/master/benchmarks/primcheck.hs) by Vitaly Bragilevsky.

## Results

For 999999937 (largest 9 digit prime)

```
  declarative isPrime: OK (0.30s)
    562  μs ±  24 μs
  primes isPrime:      OK (0.11s)
    56.9 μs ± 5.5 μs
  primes primes:       OK (0.13s)
    61.3 μs ± 5.4 μs
```
