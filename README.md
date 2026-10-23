# Linker System – CA1 Requirements and Domain Analysis

SAAD71000 Object-Oriented Analysis and Design · CA1 Scenario 03: Volunteer Transport Coordination Service (Kerry Community Link)

Author: Bartlomiej Jedrzejowski

## Overview
Requirements and domain analysis for a proposed system ("Linker System") that coordinates non-emergency volunteer transport: journey requests, driver and vehicle matching, offers, confirmations, changes and journey outcomes.

## Structure
```txt
README.md
report/
  01-scenario-interpretation.md     problems, outcomes, evidence, assumptions
  02-purpose-scope-boundary.md      purpose, boundary, scope, constraints
  03-stakeholders-actors.md         stakeholders, actors, actor goals
  04-use-cases.md                   catalogue, diagram, detailed UC-04
  05-candidate-concepts.md          candidate analysis and glossary
  06-domain-model-rationale.md      domain model, associations, rationale
  07-traceability.md                traceability matrix and coverage
  08-reflection-ai-declaration.md   reflection, AI declaration and log
requirements/
  requirements.md                   FRs, NFRs, MoSCoW
  business-rules.md
  uncertainty-register.md           assumptions, constraints, risks, questions
  backlog.md                        user stories and acceptance criteria
features/
  allocate-driver.feature           Gherkin scenarios for UC-04
diagrams/
  use-case-model.puml / .png
  domain-model.puml / .png
references/                         scenario
```

## Reading order
Start with `report/01` to `report/08` in order. Requirements, rules and uncertainties are referenced by ID (FR-, BR-, A-, Q-) and live in `requirements/`.

## Diagrams
Editable PlantUML sources are in `diagrams/*.puml`, with exported `.png` images alongside them.

## AI use
See the AI declaration and interaction log in `report/08-reflection-ai-declaration.md`.