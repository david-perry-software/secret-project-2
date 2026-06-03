---
description: "Use when creating or editing Unity character, enemy, projectile, and pickup prefabs. Defines required transforms, anchor points, and collision boundaries for this project."
name: "Prefab Contract"
applyTo: "Secret Project 2/Assets/**/*.prefab"
---
# Prefab Contract

## Required Character Hierarchy
- `Root`
- `VisualRoot`
- `AimPivot`
- `WeaponAttach`
- `Muzzle`
- `HeadAttach`
- `BackAttach`
- `FeetRoot`
- `HurtboxRoot`
- `HitboxRoot`

## Rules
- Keep transform names exact and case-sensitive.
- Gameplay code references anchor transforms by contract name, not scene object order.
- Do not place gameplay colliders under visual-only children.
- Keep hit/hurt volumes independent from sprite silhouette changes.
- Weapon and spell spawn origin must resolve from `Muzzle` unless explicitly overridden.

## Enemy and Pickup Baselines
- Enemy prefabs require `Root`, `VisualRoot`, `HurtboxRoot`, `HitboxRoot`.
- Pickup prefabs require `Root`, `VisualRoot`, and a pickup trigger collider.

## Validation Checklist
- Contract transform names present.
- No missing references to anchor transforms.
- Collider layers match project layer matrix.
- Prefab can be instantiated without null-reference errors.
