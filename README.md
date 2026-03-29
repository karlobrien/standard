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

**Option 1 — one-liner:**

```bash
curl -s https://raw.githubusercontent.com/karlobrien/standard/main/add-to-repo.sh | bash
```

**Option 2 — manually:**

```bash
git submodule add https://github.com/karlobrien/standard standard
standard/setup.sh
echo '@standard/CLAUDE.md' > CLAUDE.md
```

Then commit:

```bash
git add .gitmodules standard .editorconfig CLAUDE.md
git commit -m "chore: add standard submodule"
```

Add repo-specific rules below the import in `CLAUDE.md`:

```markdown
@standard/CLAUDE.md

# Repo-specific additions go here
```

## Updating

```bash
git submodule update --remote standard
git commit -m "chore: update standard submodule"
```
