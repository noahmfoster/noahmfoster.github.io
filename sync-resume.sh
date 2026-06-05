#!/usr/bin/env bash
set -euo pipefail

SITE_DIR="$(cd "$(dirname "$0")" && pwd)"
RESUME_SRC="/Users/noah/Documents/personal/resume/resume.pdf"
RESUME_DEST="$SITE_DIR/static/resume.pdf"

if [[ ! -f "$RESUME_SRC" ]]; then
  echo "sync-resume: source not found at $RESUME_SRC" >&2
  exit 1
fi

cp -p "$RESUME_SRC" "$RESUME_DEST"
echo "sync-resume: copied resume.pdf → static/resume.pdf"
