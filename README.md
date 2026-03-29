# standard

Shared engineering standards for .NET repositories.

## Contents

| Path | Purpose |
|------|---------|
| `.editorconfig` | C# formatting and Roslyn analyzer severities |
| `CLAUDE.md` | Claude Code enforcement rules |
| `docs/performance.md` | Allocation, async, and benchmarking guidelines |
| `docs/code-review.md` | Reviewer and author responsibilities |
| `docs/git-standards.md` | Branch naming, commit messages, workflow |
| `docs/testing.md` | Test structure, naming, coverage expectations |

## Adding to a repo

```bash
git submodule add <url> standard
standard/setup.sh          # symlinks .editorconfig to repo root
```

Then add a root `CLAUDE.md` in the consuming repo:

```markdown
@standard/CLAUDE.md

# Repo-specific additions go here
```

## Updating

```bash
git submodule update --remote standard
```
