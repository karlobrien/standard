#!/usr/bin/env bash
# Run from the root of a consuming repo after adding 'standard' as a submodule.
# Creates a symlink so the canonical .editorconfig is active at repo root.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
TARGET="$REPO_ROOT/.editorconfig"

if [ -e "$TARGET" ] && [ ! -L "$TARGET" ]; then
  echo "ERROR: $TARGET exists and is not a symlink. Remove or rename it first."
  exit 1
fi

ln -sf "$SCRIPT_DIR/.editorconfig" "$TARGET"
echo "Linked $TARGET -> $SCRIPT_DIR/.editorconfig"
