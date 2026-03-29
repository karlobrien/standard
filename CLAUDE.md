# Engineering Standards

These standards apply to all code in this repository. Read and enforce them before making any changes.

## Standards Documents

@docs/performance.md
@docs/code-review.md
@docs/git-standards.md
@docs/testing.md

## Enforcement Rules

When writing or reviewing code in this repo, you MUST:

1. **Follow `.editorconfig`** — do not write code that violates the editor/analyzer config
2. **Apply performance standards** — flag allocations, sync-over-async, and un-benchmarked perf claims
3. **Apply testing standards** — never mock the database; always write behaviour tests; regression test for every bug fix
4. **Apply git standards** — use correct branch naming and Conventional Commit messages
5. **Apply code review standards** — keep PRs small, self-review before submitting

When you spot a violation, call it out explicitly rather than silently working around it.
