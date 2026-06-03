# Copilot Customization Map

This folder contains the project-shared Copilot customization stack for Secret Project 2.

## Structure
- `copilot-instructions.md`: global repository defaults.
- `AGENTS.md`: routing policy and agent role map.
- `instructions/`: file and task scoped standards.
- `prompts/`: slash-invocable task templates.
- `agents/`: specialized agent personas with tool scopes.
- `skills/`: multi-step workflows with reusable assets/checklists.
- `hooks/`: warning automation scripts and hook configurations.

## Start Here
1. Read `copilot-instructions.md`.
2. Use prompts from `prompts/` for scoped tasks.
3. Use specialized agents for architecture/content/combat/handoff tasks.
4. Use skills for repeatable production workflows.

## Contract Priorities
1. Prefab anchors and hierarchy.
2. 8-direction animation naming.
3. Equipment slot and Sprite Library category consistency.
4. Stable ID-driven data and save compatibility.
5. No direct vendor code edits.

## Hook Notes
Hooks are configured as warning-only guardrails and do not block edits by default.
