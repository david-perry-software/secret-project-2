---
description: "Use when creating or refactoring ScriptableObject schemas, runtime state models, IDs, and save-safe data contracts for items, spells, enemies, and waves."
name: "Data Architecture"
argument-hint: "Describe the data domain (items, spells, enemies, waves, etc.)"
agent: "agent"
---
Design or refine a data architecture slice for this project.

## Requirements
- Definitions as ScriptableObjects with stable IDs.
- Runtime state in plain C# types.
- Save format stores IDs and state, not duplicated definitions.
- Include migration strategy for schema evolution.

## Output
1. Schema proposal.
2. Runtime state model.
3. Serialization model.
4. Validation rules.
5. Minimal implementation checklist.
