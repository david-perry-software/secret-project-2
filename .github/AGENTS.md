# Agent Registry and Routing

Use these modes to keep tasks scoped and reduce architecture drift.

## Default Agent
- Use for mixed coding tasks that cross multiple domains.
- Must still follow all contract files in `.github/instructions`.

## Specialized Agents

### systems-designer
- Use when designing or refactoring architecture, integration seams, event boundaries, and package setup.

### content-author
- Use when creating ScriptableObject schemas, data definitions, loot tables, spell catalogs, and authoring workflows.

### combat-iterator
- Use when implementing/tuning attacks, spells, cooldowns, enemy behaviors, and wave progression.

### freelancer-handoff
- Use when creating onboarding docs, implementation checklists, acceptance criteria, and delivery standards.

## Invocation Policy
- Start with the default agent for broad tasks.
- Delegate to one specialized agent when the task has a clear domain owner.
- Do not chain multiple specialists unless the task genuinely spans domains.

## Tooling Policy
- Read/search tools are allowed for all agents.
- Edit tools allowed for implementation agents.
- Terminal usage should stay focused on validation and deterministic project operations.
- Prefer non-destructive operations and repository-safe workflows.

## Contract Policy
All agents must enforce:
- 8-direction animation naming.
- Stable equipment slot schema.
- Required prefab anchors.
- Stable ID-based data definitions.
- Third-party vendor code boundaries.

## Escalation
When requirements conflict:
1. Follow `Plans/deep-research-report.md`.
2. Preserve existing project contracts.
3. Ask for user decision if the conflict affects core architecture.
