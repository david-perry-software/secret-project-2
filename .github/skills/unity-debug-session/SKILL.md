---
name: unity-debug-session
description: "Attach the Unity debugger, load the target scene, enter Play Mode, and validate breakpoint/debug behavior for this project. Use when you need the agent to start a Unity debug session or reproduce a runtime issue in the editor."
argument-hint: "Describe the scene, script, or breakpoint you want to debug"
---

# Unity Debug Session

## When to Use

- You need the agent to attach the Unity debugger.
- You want the agent to load a specific scene and enter Play Mode.
- You need breakpoint validation or a quick runtime smoke test.
- You want compile, console, and scene-state checks before debugging.

## Procedure

1. Confirm the active Unity instance and project path.
2. Refresh Unity and verify there are no compile errors.
3. Load the target scene.
4. Ensure the scene has the required bootstrap objects for the test.
5. Attach the debugger in VS Code or confirm the debug configuration is available.
6. Enter Play Mode.
7. Trigger the code path that should hit the breakpoint.
8. Read the console and confirm the expected log or paused state.
9. If Unity recompiles, reattach the debugger before continuing.

## Validation Checklist

- Unity editor is running for this project.
- The intended scene is loaded.
- The target script compiles cleanly.
- Breakpoint location is reachable from the current scene flow.
- Console has no new errors blocking execution.

## Notes

- Prefer the Bootstrap scene for debugger smoke tests.
- Reattach after script edits if Unity recompiles.
- Use this skill for repeatable debug sessions, not for one-off file edits.
