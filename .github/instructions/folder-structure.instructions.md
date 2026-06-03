---
description: "Use when adding new assets, scripts, scenes, or project modules. Enforces folder organization and module boundaries from the production plan."
name: "Folder Structure"
applyTo: "Secret Project 2/Assets/**"
---
# Folder Structure

## Project Root Under Assets
Use `Assets/_Project/` for all game-owned code/content.

### Expected Top-Level Subfolders
- `Art`
- `Audio`
- `Data`
- `Materials`
- `Prefabs`
- `Scenes`
- `Scripts`
- `Animation`
- `Settings`
- `ThirdParty`

## Rules
- Do not place game-owned scripts in vendor folders.
- Keep third-party assets isolated under dedicated `ThirdParty` branches.
- Prefer assembly definitions per subsystem to avoid circular dependencies.
- Keep bootstrap managers in bootstrap scene; gameplay scenes should remain content-focused.

## Addressables
- Group dynamic content (icons, VFX prefabs, skins) by gameplay domain.
- Avoid `Resources` folder usage for new systems.
