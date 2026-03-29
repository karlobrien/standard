# Git Standards

## Branch Naming

```
<type>/<short-description>
```

Types: `feat`, `fix`, `chore`, `docs`, `test`, `refactor`

Examples:
- `feat/add-retry-policy`
- `fix/null-ref-in-parser`
- `chore/update-dependencies`

## Commit Messages

Follow Conventional Commits:

```
<type>(<scope>): <short description>

[optional body]
```

- Subject line max 72 characters
- Use imperative mood: "add" not "added"
- Body explains *why*, not *what* (the diff shows what)

## Workflow
- Branch from `main`, merge back to `main`
- Squash-merge feature branches — one commit per PR on `main`
- Never force-push `main`
- Delete branches after merge
- Tag releases with semver: `v1.2.3`

## What Not to Commit
- Secrets, connection strings, API keys — use environment variables or secret stores
- Build artefacts (`bin/`, `obj/`)
- IDE-specific files not in `.gitignore`
