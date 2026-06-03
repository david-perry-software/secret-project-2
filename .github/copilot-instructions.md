# Copilot Instructions for Secret Project 2

These are repository-wide defaults for AI-assisted development.

## Project Intent
- Build a polished top-down, vertical-scrolling wave-survival fantasy shooter.
- Optimize for a freelancer-friendly, data-driven workflow.
- Follow the plan in `Plans/deep-research-report.md` when guidance conflicts arise.

## Core Stack Defaults
- Unity: 2022.3 LTS baseline.
- Gameplay framework: TopDown Engine.
- Input: Unity Input System.
- Camera: Cinemachine.
- Data model: ScriptableObject definitions + plain C# runtime state.
- Visual pipeline default: Character Creator - Fantasy first.
- Animation contract default: 8-direction naming matrix.

## Architecture Rules
- Prefer GameObject/MonoBehaviour patterns over ECS unless profiling proves need.
- Keep gameplay systems data-driven with explicit IDs.
- Separate domain definitions from runtime session state.
- Avoid direct dependencies from UI to combat internals; use events/adapters.
- Keep third-party code read-only. Extend via wrappers/adapters in project code.

## Content Contracts
- Equipables must map to stable slot keys and Sprite Library categories.
- Keep attachment anchors stable on character prefabs.
- Do not hardcode sprite references in gameplay logic; resolve by category/label.
- Keep colliders/hitboxes independent from visual sprite bounds.

## Implementation Preferences
- Small, reviewable changes over broad rewrites.
- Add tests/validation where practical for new systems.
- Preserve existing naming and folder conventions.
- Include concise docs/checklists for freelancer handoff on new subsystems.

## Delivery Standards
- Any new feature should define:
  - Definition data schema.
  - Runtime state model.
  - Prefab contract touchpoints.
  - Save/load implications.
  - Validation checks.

## Decision Priority
1. Safety and maintainability.
2. Contract compatibility (naming, slots, prefab anchors, IDs).
3. Performance and scalability.
4. Speed of implementation.
