# prime-bench (wip)

tasty-bench of basic prime algorithms

So far it compares:

- naive isPrime over integers
- the circular algorithm from Colin Runciman's [Function Pearl](https://www.semanticscholar.org/paper/Lazy-Wheel-Sieves-and-Spirals-of-Primes-Runciman/09d512179ed4208604f6d8ddcb1c5f87217ebbe0)
- the [primes](https://hackage.haskell.org/package/primes) library which uses a wheel sieve, also based on the same paper

The benchmarking and `isPrime` are derived from the code in chapter 10 of [Haskell in Depth](https://github.com/bravit/hid-examples/blob/master/benchmarks/primcheck.hs) by Vitaly Bragilevsky.

## Output

```
  isPrime 999999937
    naive:          OK (0.29s)
      554  μs ±  25 μs
    circular:       OK (0.11s)
      59.6 μs ± 5.4 μs
    primes:         OK (0.25s)
      60.5 μs ± 5.3 μs
    primes isPrime: OK (0.26s)
      62.6 μs ± 4.9 μs
```
