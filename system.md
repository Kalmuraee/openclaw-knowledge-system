# Knowledge Management System

A research-backed knowledge management system inspired by Ars Contexta, adapted for OpenClaw.

## Architecture

```
knowledge/
├── insights/     # Extracted insights (reduce)
├── mocs/         # Maps of Content
├── claims/       # Research-backed claims
├── sessions/     # Session capture
└── system.md     # This file
```

## Core Workflow (6 Rs)

| Phase | Command | Description |
|-------|---------|-------------|
| Record | Manual | Capture to inbox |
| Reduce | `/reduce` | Extract insights |
| Reflect | `/reflect` | Find connections |
| Reweave | `/reweave` | Update old notes |
| Verify | `/verify` | Quality check |
| Rethink | `/rethink` | Challenge assumptions |

## Commands

### Reduce
Extract insights from sources into `knowledge/insights/`.

Process:
1. Read source material
2. Identify key claims/decisions
3. Write insight with metadata
4. Link to existing notes

### Reflect
Find connections between notes, update MOCs.

Process:
1. Search recent insights
2. Identify patterns/connections
3. Update MOC with new links
4. Add to relevant notes

### Reweave
Update older notes with new context.

Process:
1. Find stale notes (>30 days)
2. Check recent insights for connections
3. Add new context/links
4. Update timestamps

### Verify
Quality check on knowledge files.

- Schema compliance
- Link integrity
- Freshness check

### Rethink
Challenge system assumptions.

- Review core beliefs
- Identify drift
- Propose improvements

## Research Claims

Core principles backed by cognitive science:

1. **Spreading activation** — wiki-links enable associative discovery
2. **Generation effect** — writing reinforces memory
3. **Context switching cost** — MOCs reduce overhead
4. **Atomic notes** — one idea per note
5. **Progressive disclosure** — description fields aid navigation

## Usage

Import in sessions:
```
Use the knowledge management system from knowledge/system.md
```

---

*Generated: 2026-02-18*
