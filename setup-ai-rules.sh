#!/bin/bash

set -euo pipefail

TARGET_DIR="${1:-}"

if [ -z "$TARGET_DIR" ]; then
  echo "Usage: $0 /path/to/project"
  exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: directory does not exist: $TARGET_DIR"
  exit 1
fi

create_file_if_missing() {
  local file_path="$1"
  local content="$2"

  if [ -e "$file_path" ]; then
    echo "Skipping, already exists: $file_path"
  else
    printf "%s\n" "$content" > "$file_path"
    echo "Created: $file_path"
  fi
}

AI_GUIDELINES_PATH="$TARGET_DIR/ai-guidelines.md"
CURSOR_RULES_PATH="$TARGET_DIR/.cursorrules"
AGENTS_PATH="$TARGET_DIR/AGENTS.md"
CONSTITUTION_PATH="$TARGET_DIR/constitution.md"
README_PATH="$TARGET_DIR/README.md"

create_file_if_missing "$AI_GUIDELINES_PATH" "# AI Guidelines

## 1. General Principles

- Prefer simple and readable code over clever solutions
- Avoid unnecessary abstractions
- Keep functions small and focused
- Write code that a junior developer can understand
- Be consistent with existing project patterns

---

## 2. Tech Stack

- Backend: Node.js + Express
- Frontend: Vite + React
- Language preference: TypeScript when possible

---

## 3. Coding Rules

### General
- Avoid using `any`
- Use explicit and meaningful variable names
- Do not introduce unused code
- Do not break existing functionality

### Structure
- Prefer service / business layer over logic in controllers
- Keep controllers thin
- Reuse existing utilities before creating new ones

### Error Handling
- Always handle errors explicitly
- Do not swallow exceptions
- Return meaningful error messages

---

## 4. Style

- Prefer clarity over brevity
- Avoid magic numbers (use constants)
- Use early returns instead of deep nesting
- Keep indentation clean and consistent

---

## 5. When Generating Code

- Follow existing patterns in the repository
- Do not introduce new frameworks or libraries without justification
- If multiple solutions exist, prefer the simplest one
- Explain trade-offs when relevant

---

## 6. When Refactoring

- Do not change behavior unless explicitly requested
- Improve readability first, performance second
- Keep changes minimal and scoped

---

## 7. Output Expectations

- Provide clean and complete code
- Avoid unnecessary explanations
- When needed, include short and objective explanations

"

create_file_if_missing "$CURSOR_RULES_PATH" "# Cursor Rules

Follow the rules defined in:
ai-guidelines.md"

create_file_if_missing "$AGENTS_PATH" "# Agent Instructions

Follow the rules defined in:
ai-guidelines.md"

create_file_if_missing "$CONSTITUTION_PATH" "# Constitution

Follow the rules defined in:
ai-guidelines.md"

create_file_if_missing "$README_PATH" "# Project

## AI Guidelines

See:
ai-guidelines.md"

echo "Done."