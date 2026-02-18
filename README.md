# OpenClaw Knowledge System

A research-backed knowledge management system for AI agents, inspired by [Ars Contexta](https://github.com/agenticnotetaking/arscontexta) but adapted for OpenClaw.

## Overview

This system provides AI agents with persistent memory, structured insight extraction, and research-grounded knowledge architecture. Built specifically for autonomous agent ecosystems.

## Features

- **6-R Workflow**: Record → Reduce → Reflect → Reweave → Verify → Rethink
- **Research-Backed**: Claims grounded in cognitive science (249 claims framework)
- **MOC Navigation**: Maps of Content for efficient knowledge retrieval
- **Session Capture**: Automatic session state persistence
- **Quality Enforcement**: Schema validation on writes

## Architecture

```
knowledge/
├── system.md           # This file
├── insights/           # Extracted insights (reduce output)
│   └── template.md    # Insight template
├── mocs/              # Maps of Content
│   └── agents.md      # Agent ecosystem MOC
├── claims/            # Research-backed claims
│   └── knowledge-management.md
└── sessions/          # Session captures
```

## Commands

### Reduce
Extract insights from sources:
```bash
./knowledge/reduce.sh "source" "title" "claim"
```

### Reweave  
Find and update stale notes:
```bash
./knowledge/reweave.sh
```

## Research Claims

The system is grounded in these core principles:

1. **Spreading Activation** — wiki-links enable associative discovery
2. **Generation Effect** — writing reinforces memory
3. **Context Switching Cost** — MOCs reduce cognitive overhead
4. **Atomic Notes** — one idea per note improves composability
5. **Progressive Disclosure** — descriptions aid navigation
6. **Fresh Context Per Task** — subagents for multi-phase workflows
7. **Session Boundaries** — clear boundaries improve learning

## Usage in OpenClaw

Import in any session:
```
Use the knowledge management system from knowledge/system.md
```

## Integration with OpenClaw

- **Memory Search**: Uses existing `memory_search` tool
- **Cron Jobs**: Schedule periodic reflect/reweave
- **Skills**: Can be packaged as OpenClaw skill
- **Agents**: Each agent can maintain domain MOCs

## Open Source

This system is designed to be:
- ✅ **Open Source Ready** — clean, documented code
- ✅ **Dependency Free** — shell scripts + markdown
- ✅ **Portable** — works with any markdown-based system
- ✅ **Research Grounded** — methodology backed by evidence

### License
MIT License — free to use, modify, and distribute.

## Credits

Inspired by [Ars Contexta](https://github.com/agenticnotetaking/arscontexta) by agenticnotetaking.

Research synthesis from:
- Zettelkasten methodology
- Cornell Note-Taking
- PARA method
- GTD
- Network theory
- Cognitive science

---

*For OpenClaw ecosystem — 2026-02-18*
