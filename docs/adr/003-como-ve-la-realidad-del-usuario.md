# ADR-003: Preguntas, pantallazos, archivos y navegador, con reglas

## Estado

Aceptada el 11 de noviembre de 2026 por gtorreal.

## Contexto

Un contador compañero tiene que ver lo que el usuario ve: el documento, el registro de compras y ventas, la cartola, la pantalla de su aplicación contable. Los entornos de los usuarios son distintos: algunos solo pueden mandar un pantallazo, otros pueden adjuntar archivos y otros tienen un agente que puede abrir un navegador y recorrer la aplicación.

## Decisión

- **El skill trabaja con lo que el usuario pueda mostrar,** en este orden de preferencia: un archivo exportado (el registro de compras y ventas del SII, la cartola en CSV o Excel, el listado de boletas de honorarios), un pantallazo o un PDF, o la aplicación abierta en un navegador que el agente puede recorrer. Por cada exportación habitual, el skill dice cómo se baja, paso a paso.
- **Aprender la aplicación del usuario** es parte del trabajo: dónde se registra cada operación, cómo se llaman sus cuentas, qué reportes trae. Lo aprendido se guarda en `mapa-de-mi-app.md`, en la carpeta del usuario (ADR-002), para no volver a recorrerla cada vez.
- **Reglas del navegador**, sin excepción:
  - El usuario inicia sesión él mismo. El agente nunca escribe una contraseña ni un código de verificación.
  - Solo lectura por defecto: mirar, leer y anotar.
  - Nada se guarda, emite, paga, anula ni confirma en la aplicación sin que el usuario lo confirme en ese momento, para esa acción.
  - En el SII, nada se envía ni se presenta.
  - Los datos que se leen se usan para la conversación y la carpeta del usuario; no se mandan a otro lado.
- **Si el entorno no tiene navegador,** el skill pide pantallazos o archivos y dice exactamente cuáles.

## Consecuencias

- El skill necesita una referencia de exportaciones y de reglas del navegador (`contador/references/ver-la-realidad.md`, fase 1).
- Un mapa de la aplicación queda desactualizado cuando la aplicación cambia: el skill lo corrige cuando lo que ve no calza con lo anotado.
