# AI Guidelines

## 1. General Principles

- Prefer simple and readable code over clever solutions
- Avoid unnecessary abstractions
- Keep functions small and focused
- Write code that a junior developer can understand
- Be consistent with existing project patterns

---

## 2. Tech Stack

- Language preference: bash, Python, JavaScript

---

## 3. Coding Rules

### General
- Avoid using 
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


