---
description: "Use when implementing or tuning attacks, spells, cooldowns, wave enemies, and combat feel in the top-down survival loop."
name: "Combat Systems"
argument-hint: "Describe the combat mechanic or tuning objective"
agent: "agent"
---
Implement or tune a combat system feature.

## Requirements
- Keep primary/secondary attack channels clean.
- Support six spell slots with independent cooldown behavior.
- Use data-driven definitions for spells and enemy actions.
- Integrate feedback hooks without hard coupling.

## Output
1. Mechanic design summary.
2. Data requirements.
3. Runtime logic and state transitions.
4. Balance knobs to expose.
5. Test scenarios for wave stress conditions.
