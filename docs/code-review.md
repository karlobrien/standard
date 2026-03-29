# Code Review Standards

## Reviewer Responsibilities
- Review within 1 business day of assignment
- Approve only code you understand — "LGTM" without reading is a policy violation
- Distinguish blocking issues from suggestions (use `nit:` prefix for non-blocking)

## What to Look For
- Correctness: does it do what it says on the tin?
- Error handling: are failure paths explicit and tested?
- Naming: do types, methods, and variables communicate intent without comments?
- Scope creep: does the PR do one thing?
- Tests: are edge cases covered? Are tests testing behaviour, not implementation?

## What Not to Do
- Don't bikeshed formatting — the `.editorconfig` enforces style automatically
- Don't request changes that are purely personal preference with no justification
- Don't approve PRs with failing CI

## Author Responsibilities
- Keep PRs small — a PR that touches >500 lines needs a strong justification
- Write a clear description: what changed and why
- Self-review before requesting review — read your own diff
- Respond to all comments before merging
