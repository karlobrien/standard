#!/usr/bin/env bash
# Run from the root of a repo to add the standard submodule.
set -euo pipefail

git submodule add https://github.com/karlobrien/standard standard
standard/setup.sh

if [ ! -f CLAUDE.md ]; then
  echo '@standard/CLAUDE.md' > CLAUDE.md
  echo "Created CLAUDE.md"
else
  echo "CLAUDE.md already exists — add '@standard/CLAUDE.md' to it manually if needed"
fi

echo "Done. Commit the changes:"
echo "  git add .gitmodules standard .editorconfig CLAUDE.md"
echo "  git commit -m 'chore: add standard submodule'"
