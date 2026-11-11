# ADR-005: La confianza se mide, no se promete

## Estado

Aceptada el 11 de noviembre de 2026 por gtorreal.

## Contexto

Un no contador no puede distinguir una respuesta correcta de una plausible. Para que pueda apoyarse en el skill, el skill tiene que decir cuándo está seguro y cuándo no, parar cuando el caso lo excede, y eso tiene que estar probado.

## Decisión

- **Niveles de certeza en cada respuesta que importa:** verificado (una fuente oficial leída lo dice), criterio fundado (se sigue de fuentes leídas, con el razonamiento a la vista), sin verificar (falta leer algo; no se usa para registrar ni declarar), requiere decisión del usuario (depende de un hecho o una elección suya) y requiere contador (quedó incierto después de investigar). Dichos en palabras simples.
- **Lista de alto:** casos en que el skill no deja avanzar sin un contador, como instrucción y no como sugerencia: cambio de régimen u otra opción irrevocable, un monto material con más de una respuesta defendible, una notificación o fiscalización del SII, una rectificatoria, término de giro, y lo que esté fuera del alcance de ADR-001. El skill entrega la pregunta lista para mandarle al contador.
- **Casos de prueba como columna vertebral** (`casos/`): cada uno con la ficha de una empresa inventada, la pregunta, la respuesta esperada, su fuente y el nivel de certeza correcto. Se corren con cada versión y con los modelos más usados, y el resultado se publica en el README con la fecha. Los casos crecen con el tiempo: cada error reportado se vuelve un caso.

## Consecuencias

- Un cambio de criterio sin caso no se acepta (ADR-006).
- Correr los casos tiene costo; al principio se corren a mano con un agente de contexto limpio, y se automatiza cuando el conjunto lo justifique.
