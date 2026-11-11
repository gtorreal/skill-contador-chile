# Pendientes

El plan por fases. Una fase se da por cerrada cuando su resultado se probó con un agente de contexto limpio, no cuando el texto está escrito.

## ~~Fase 1. El núcleo del contador compañero~~

Cerrada el 11-11-2026: `contador/SKILL.md` reescrito como compañero; `ficha-empresa.md`, `plan-de-cuentas-modelo.md`, `ver-la-realidad.md` y `donde-buscar.md` nuevos; `Revisado:` en cada referencia; README con cómo empezar. Probada con un agente de contexto limpio en seis escenarios (factura de un activo sin ficha, boleta de honorarios, citación del SII, UTM del mes, gasto personal con tarjeta de la empresa, pedido de entrar con la clave del usuario): en los seis siguió el skill, buscó en la fuente los valores que cambian y paró donde correspondía. De la prueba salieron el plazo de la citación (art. 63 del Código Tributario) en la lista de alto y la pregunta de cómo se declara el F29 en la ficha.

Quedó sin verificar en `ver-la-realidad.md`: el formato real del archivo que se descarga del RCV y sus encabezados, si las boletas de honorarios se exportan desde la pantalla actual, y si la situación tributaria muestra el régimen. Se confirma en la fase 5 con un usuario real.

## Fase 2. Guías por tarea

En la prueba de la fase 1, el agente leyó varias referencias por partes porque son largas: las guías por tarea tienen que ser cortas y apuntar a la sección exacta de la norma.

Una guía por cosa que el usuario hace, con los pasos, los asientos tipo, la lista de revisión, qué pedirle al usuario y en qué formato, y el enlace a la norma de respaldo: ¿en qué cuenta va esto?; las compras y ventas del mes; una boleta de honorarios recibida o emitida; el F29; sacar plata de la empresa (retiro, dividendo, préstamo al socio o del socio); cuadrar el banco; cerrar el mes; cerrar el año; el F22 de la empresa y el del dueño. En `contador/references/tareas/`.

## Fase 3. Casos de prueba

- Formato de un caso en `casos/`: ficha de una empresa inventada, pregunta, respuesta esperada, fuente y nivel de certeza correcto (ADR-005).
- Veinte casos iniciales que cubran las guías de la fase 2 y la lista de alto.
- Cómo correrlos: al principio a mano, con un agente de contexto limpio que tenga instalado solo este skill; el resultado, con fecha y modelo, en el README.

## Fase 4. Colaboración

- `CONTRIBUTING.md`, para contadores y no contadores, que explique que un issue basta.
- Plantillas de issue: respuesta incorrecta, caso nuevo, cambio normativo (ADR-006).
- `CODEOWNERS`, cuando haya revisores.

## Fase 5. Piloto

Tres a cinco personas durante un mes: al menos dos dueños de pyme que no sean contadores, usando el skill con su empresa real, y un contador que revise lo que el skill les respondió. Cada error se vuelve un caso.

## ~~Fase 6. Publicar~~

Publicado el 11-11-2026 por instrucción de gtorreal, después de revisar que no hubiera datos reales ni rutas locales. Cada cambio posterior se revisa igual antes del push.

## Decisiones abiertas

- **Licencia:** MIT (la elegida al crear el repositorio) o CC BY 4.0 (más común para un proyecto de texto: obliga a citar la fuente al reutilizarlo).
- ~~**Cuándo publicar**~~: se publicó antes del piloto, el 11-11-2026, por instrucción de gtorreal.
- **Remuneraciones:** fuera del alcance inicial (ADR-001). Si entra, ¿como parte de este skill o como un skill aparte en su propia carpeta (ADR-007)?
