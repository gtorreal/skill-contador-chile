# ADR-007: El skill vive en su propia carpeta

## Estado

Aceptada el 11 de noviembre de 2026 por gtorreal.

## Contexto

El repositorio tiene dos públicos: el agente del usuario, que solo necesita el skill, y las personas que colaboran, que necesitan las decisiones, el plan y los casos. Si el skill está en la raíz, instalarlo arrastra todo lo demás al contexto del agente.

## Decisión

- `contador/` es el skill: `SKILL.md` y `references/`. Es lo único que se instala (un enlace o una copia de esa carpeta).
- En la raíz quedan `README.md`, `AGENTS.md` (con `CLAUDE.md` como enlace), `LICENSE`, `docs/` y, desde la fase 3, `casos/`.

## Consecuencias

- La instalación apunta a `contador/`, no a la raíz.
- Si el proyecto llega a tener más de un skill (por ejemplo, uno de remuneraciones), cada uno va en su carpeta.
