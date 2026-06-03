---
name: prefab-validation
description: 'Validate prefab hierarchy contracts, anchor transforms, animation naming dependencies, and data bindings before merge. Use for pre-commit QA and freelancer submissions.'
argument-hint: 'Describe the prefab set or subsystem to validate'
---
# Prefab Validation

## When to Use
- Before merge of character/enemy/pickup prefab changes.
- During freelancer intake reviews.
- After animation and visual pipeline updates.

## Procedure
1. Enumerate changed prefabs.
2. Check required hierarchy and anchors.
3. Check layer/sorting/collider setup.
4. Check binding dependencies to data and visuals.
5. Produce pass/fail report with fixes.

## References
- [Prefab validation checklist](./assets/prefab-validation-checklist.md)
- [Validation report template](./assets/validation-report-template.md)
