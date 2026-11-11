# ADR-006: Cómo se colabora

## Estado

Aceptada el 11 de noviembre de 2026 por gtorreal.

## Contexto

El proyecto quiere que contadores y no contadores lo mejoren. Saben cosas distintas: el no contador sabe qué pregunta de verdad una pyme y cuándo una respuesta no le sirvió; el contador sabe si el criterio es correcto.

## Decisión

- **Aportes de no contadores:** casos (preguntas reales de su negocio, con los datos inventados) y reportes de respuestas que estaban mal o no se entendían. No exigen saber contabilidad.
- **Aportes de contadores:** revisar y proponer cambios de criterio, y aprobarlos cuando sean revisores del área.
- **Regla de entrada:** todo cambio de criterio cita una fuente oficial con fecha de lectura y trae el caso que lo cubre. Sin fuente no entra.
- **Plantillas de issue:** «respuesta incorrecta», «caso nuevo» y «cambio normativo», con los campos que cada una necesita. `CONTRIBUTING.md` explica cómo aportar sin saber Git (un issue basta).
- **Revisores por área** (tributario, NIIF) en `CODEOWNERS`, cuando haya contadores dispuestos. Mientras tanto, revisa y aprueba gtorreal, que mantiene el repositorio.
- **Licencia:** MIT por ahora (decisión abierta en `docs/PENDIENTES.md`: CC BY 4.0 es más común para un proyecto de texto).

## Consecuencias

- El mantenedor revisa todo hasta que haya revisores; el volumen de aportes puede superar su tiempo, y los casos ayudan a revisar más rápido.
- Ningún aporte puede traer datos reales de una empresa: la plantilla lo pide y la revisión lo verifica.
