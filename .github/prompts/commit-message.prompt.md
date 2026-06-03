---
description: "Use when you want a concise, high-quality git commit message generated from the current diff or staged changes."
name: "Commit Message"
argument-hint: "Describe the change or paste a diff summary"
agent: "agent"
---

Generate a git commit message for this repository.

## Requirements

- Prefer Conventional Commit style when it fits: `type(scope): summary`.
- Keep the summary concise, specific, and imperative.
- Mention the main user-visible change or technical intent.
- If the change is non-trivial, include a short body with 2-4 bullets.
- Call out any follow-up work, risk, or behavioral impact.
- Do not exaggerate or add filler.

## Output Format

1. Recommended commit subject.
2. Optional body.
3. Optional 2-3 alternatives if the change could reasonably be framed different ways.

## Guidance

- Use `feat` for new behavior.
- Use `fix` for bug fixes.
- Use `refactor` for internal restructuring.
- Use `chore` for tooling, settings, or cleanup.
- Use a narrow scope when one is obvious, such as `bootstrap`, `input`, `debug`, or `settings`.
