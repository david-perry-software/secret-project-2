---
description: "Use when implementing or refactoring save/load systems for inventory, equipment, spells, waves, and run-state persistence."
name: "Save Persistence"
argument-hint: "Describe what state must be persisted"
agent: "agent"
---
Design or implement save/load behavior for the requested state.

## Requirements
- Persist stable IDs for definitions.
- Persist runtime state separately from data assets.
- Handle missing/renamed content with fallback logic.
- Include versioning and migration strategy.

## Output
1. Save schema.
2. Serialization flow.
3. Load reconciliation strategy.
4. Failure handling.
5. Validation tests.
