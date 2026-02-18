#!/bin/bash
# Reweave Workflow - Update old notes with new context
# Finds notes older than 30 days and checks for updates

DAYS=30
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
KNOWLEDGE_DIR="$SCRIPT_DIR"

echo "=== Reweave: Finding stale notes ==="
echo ""

# Find notes older than $DAYS days
STALE=$(find "$KNOWLEDGE_DIR" -name "*.md" -mtime +$DAYS -type f 2>/dev/null)

if [ -z "$STALE" ]; then
    echo "No stale notes found (> $DAYS days)"
    exit 0
fi

echo "Stale notes (> $DAYS days):"
echo "$STALE" | while read file; do
    echo "  - $(basename "$file")"
done
echo ""

echo "Recent insights to check for connections:"
find "$KNOWLEDGE_DIR/insights" -name "*.md" -mtime -7 -type f 2>/dev/null | while read file; do
    echo "  - $(basename "$file")"
done

echo ""
echo "=== Reweave Complete ==="
echo "Review stale notes manually and add new context"
