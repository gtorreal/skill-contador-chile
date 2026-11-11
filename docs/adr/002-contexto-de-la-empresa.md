# ADR-002: El contexto de la empresa vive en la carpeta del usuario

## Estado

Aceptada el 11 de noviembre de 2026 por gtorreal.

## Contexto

La misma pregunta («¿esto es gasto?», «¿en qué cuenta va?») tiene respuestas distintas según el régimen, si la empresa está afecta a IVA, si lleva contabilidad completa o simplificada, qué plan de cuentas usa y qué ya está declarado. El skill privado del que nace funciona porque su repositorio tiene esos datos escritos. Un usuario cualquiera llega sin nada de eso.

## Decisión

- **Las preguntas viven en el skill** (`contador/references/ficha-empresa.md`), porque las hace el agente. Están escritas para quien no sabe contabilidad («¿emites facturas con IVA o boletas exentas?», no «¿estás afecto a IVA?»), y cada una dice dónde mirar la respuesta (la carpeta tributaria del SII, el inicio de actividades, la aplicación contable).
- **Las respuestas viven en la carpeta del usuario**, en archivos que el skill crea y mantiene:
  - `ficha-empresa.md`: régimen, giro, IVA, inicio de actividades, socios, trabajadores, banco, si tiene contador, qué aplicación usa, qué ya está declarado.
  - El plan de cuentas del usuario, copiado de su aplicación o, si no tiene, el plan modelo del skill adaptado. El skill recomienda cuentas **de ese plan**, no de uno genérico.
  - `mapa-de-mi-app.md`: lo que el skill aprende de la aplicación del usuario (ADR-003).
- **Si no encuentra la ficha, el skill empieza por la entrevista** antes de responder algo que dependa de ella; una duda general (qué es el PPM) se responde sin ficha. Si el entorno no permite guardar archivos, el skill entrega la ficha como texto para que el usuario la guarde y la pegue en la próxima conversación.
- **El README explica a las personas cómo empezar** («dile: armemos la ficha de mi empresa») y trae una plantilla para quien prefiera llenarla a mano; la fuente de las preguntas es una sola, la del skill.

## Consecuencias

- La calidad de las respuestas depende de la ficha: el skill la revisa cuando algo no calza y pregunta lo que falte, en vez de suponer.
- La ficha tiene datos de la empresa: queda en el equipo o la cuenta del usuario, nunca en este repositorio.
