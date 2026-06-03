---
description: "Use when you want the agent to create a concise git commit message and actually make the commit for the current changes."
name: "Commit Message"
argument-hint: "Describe the change, target files, or ask the agent to commit the current changes"
agent: "agent"
---

Create and commit the current repository changes.

## Requirements

- Inspect the diff or staged changes before committing.
- Prefer Conventional Commit style when it fits: `type(scope): summary`.
- Keep the summary concise, specific, and imperative.
- Mention the main user-visible change or technical intent.
- If the change is non-trivial, include a short body with 2-4 bullets.
- Call out any follow-up work, risk, or behavioral impact.
- Do not exaggerate or add filler.
- Stage the appropriate files if they are not already staged.
- Create the git commit yourself using the generated message.
- If the commit hook rejects the message, revise it and try again.

## Output Format

1. Commit subject used.
2. Optional body used.
3. Commit hash after the commit is created.
4. Optional 2-3 alternatives if the change could reasonably be framed different ways.

## Guidance

- Use `feat` for new behavior.
- Use `fix` for bug fixes.
- Use `refactor` for internal restructuring.
- Use `chore` for tooling, settings, or cleanup.
- Use a narrow scope when one is obvious, such as `bootstrap`, `input`, `debug`, or `settings`.
