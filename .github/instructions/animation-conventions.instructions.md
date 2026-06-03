---
description: "Use when creating animation clips, states, animator parameters, or visual state mapping for player and enemies. Enforces this project's 8-direction naming contract."
name: "Animation Conventions"
applyTo: "Secret Project 2/Assets/**/*.{anim,controller,overrideController}"
---
# Animation Conventions

## Direction Set
Use 8-direction suffixes only:
- `N`, `NE`, `E`, `SE`, `S`, `SW`, `W`, `NW`

## Required Naming Pattern
`<Action>_<Direction>`

Examples:
- `Idle_N`
- `Move_NE`
- `CastPrimary_E`
- `CastSpell_SW`
- `Hit_W`
- `Death_S`

## Rules
- Do not invent alternative direction abbreviations.
- Keep action verbs consistent across entities.
- If an entity lacks a directional set, map explicitly through fallback logic rather than renaming clips.
- Avoid one-off animator state names that cannot be auto-mapped.

## Runtime Mapping
- Visual systems should map logical state + direction to clip key.
- Do not bind gameplay logic to hardcoded Animator state hashes without a mapping layer.
