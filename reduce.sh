#!/bin/bash
# Reduce Workflow - Extract insights from sources
# Usage: ./reduce.sh "source" "title" "claim"

SOURCE="$1"
TITLE="$2"
CLAIM="$3"
DATE=$(date +%Y-%m-%d)

if [ -z "$SOURCE" ] || [ -z "$TITLE" ]; then
    echo "Usage: ./reduce.sh <source> <title> <claim>"
    echo "Example: ./reduce.sh 'Web search' 'AI Agents 2026' 'Multi-agent systems trending'"
    exit 1
fi

FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -d '.,!?')
FILENAME="insight-${DATE}-${FILENAME}.md"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cat > "$SCRIPT_DIR/insights/${FILENAME}" << EOF
# Insight: $TITLE

**Date:** $DATE
**Source:** $SOURCE
**Tags:** 

## Key Claim
$CLAIM

## Evidence


## Implications


## Related


---

*Extracted via: reduce workflow*
EOF

echo "Created: insights/${FILENAME}"
