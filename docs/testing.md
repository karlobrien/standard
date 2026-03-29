# Testing Standards

## Principles
- Test behaviour, not implementation — tests should survive refactors
- One logical assertion per test (multiple `Assert` calls are fine if they verify one concept)
- Tests are first-class code — apply the same quality bar as production code

## Structure: Arrange / Act / Assert

```csharp
[Fact]
public void WhenInputIsNegative_ThrowsArgumentOutOfRangeException()
{
    // Arrange
    var sut = new Calculator();

    // Act
    var act = () => sut.Sqrt(-1);

    // Assert
    act.Should().Throw<ArgumentOutOfRangeException>();
}
```

## Naming

```
<WhenCondition>_<ExpectedOutcome>
```

## Test Types
- **Unit tests**: pure logic, no I/O, no DI container, fast
- **Integration tests**: test real infrastructure (DB, HTTP) — no mocks for infrastructure
- **Do not mock the database** — integration tests must hit a real DB (mocked tests have masked broken migrations before)

## Coverage
- New features: 100% of public API methods must have at least one test
- Bug fixes: a regression test proving the fix is required before merging

## Libraries
- xUnit for test runner
- FluentAssertions for assertions
- Testcontainers for DB/infra in integration tests
