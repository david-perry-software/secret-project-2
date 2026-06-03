---
description: "Use when integrating or extending TopDown Engine, More Mountains tools, Odin, or other marketplace packages. Defines vendor boundary and adapter rules."
name: "Third-Party Integration"
applyTo: ["Secret Project 2/Assets/ThirdParty/**", "Secret Project 2/Assets/_Project/Scripts/**"]
---
# Third-Party Integration

## Boundary Rules
- Treat vendor package code as read-only.
- Implement project behavior through wrappers, adapters, and extension points.
- Keep integration code in project-owned namespaces and folders.

## TopDown Engine Integration
- Extend through character abilities, events, and project-side components.
- Do not patch package internals unless absolutely necessary.
- If patching is unavoidable, document exact diff and rationale.

## Data and Tooling
- Keep ScriptableObject IDs stable across package upgrades.
- Avoid hard dependencies from core game code to optional tooling.
- Wrap editor-only integrations (for example Odin-only utilities) with clear boundaries.

## Upgrade Safety
- Version-lock package updates per milestone.
- Run regression checks after package updates.
