# Performance Standards

## Allocations
- Prefer `Span<T>` and `Memory<T>` over arrays for hot paths
- Avoid LINQ in hot paths — prefer `for`/`foreach` with early exit
- Use `ArrayPool<T>` for large temporary buffers
- Avoid `string.Format` / interpolation in tight loops — use `StringBuilder` or `TryFormat`

## Async
- Never use `.Result` or `.Wait()` — always `await`
- Use `ConfigureAwait(false)` in library code
- Prefer `ValueTask` for methods that are often synchronous
- Avoid `async void` — use `async Task`

## Collections
- Size collections at construction when count is known
- Prefer `Dictionary<K,V>` over repeated `List<T>.Find` / LINQ lookups
- Use `ImmutableArray<T>` for read-only data shared across threads
- Return `IReadOnlyList<T>` or `IReadOnlyDictionary<K,V>` from public APIs

## Benchmarking
- Use BenchmarkDotNet for any non-trivial performance claim
- Establish a baseline before optimising — profile first, guess never
- Measure allocation counts alongside execution time
