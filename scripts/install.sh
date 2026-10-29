#!/usr/bin/env bash
# Copie AGENTS.md et les templates dans un projet cible.
set -euo pipefail

TARGET="${1:-}"
if [ -z "$TARGET" ] || [ ! -d "$TARGET" ]; then
  echo "Usage : $0 /chemin/vers/projet"
  exit 1
fi

SRC="$(cd "$(dirname "$0")/.." && pwd)"

if [ -f "$TARGET/AGENTS.md" ]; then
  echo "AGENTS.md existe déjà : copie en AGENTS.economie.md (à fusionner à la main)"
  cp "$SRC/AGENTS.md" "$TARGET/AGENTS.economie.md"
else
  cp "$SRC/AGENTS.md" "$TARGET/AGENTS.md"
fi

mkdir -p "$TARGET/.codex-templates"
cp "$SRC/templates/"*.md "$TARGET/.codex-templates/"

echo "Installé dans $TARGET"
