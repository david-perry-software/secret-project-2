---
description: "Use when implementing inventory equipment, visual part swapping, Sprite Library categories, or item-to-visual binding. Defines stable slot and label contracts."
name: "Equipment Slot Schema"
applyTo: ["Secret Project 2/Assets/_Project/Data/**/*.asset", "Secret Project 2/Assets/_Project/Scripts/**/*.*"]
---
# Equipment Slot Schema

## Approved Equipment Slots
- `Helmet`
- `Hair`
- `Face`
- `Chest`
- `Gloves`
- `Pants`
- `Boots`
- `Cape`
- `MainHand`
- `OffHand`
- `Back`
- `Aura`

## Sprite Library Contract
- Each slot maps to one Sprite Library category with the same name.
- Item definitions must provide `EquipVisualLabel` compatible with category labels.
- Gameplay code resolves visuals by `Slot + Label`, never by raw sprite path.

## Rules
- Do not add ad-hoc slots without updating schema docs and migrations.
- Keep label keys stable to avoid save incompatibility.
- Runtime loadout must tolerate missing labels with safe fallback visuals.

## Save/Load Rule
- Persist equipped item IDs, not transient sprite references.
