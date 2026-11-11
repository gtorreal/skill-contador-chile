# ADR-001: Contador compañero, no tenedor de libros

## Estado

Aceptada el 11 de noviembre de 2026 por gtorreal.

## Contexto

El proyecto nace de un skill privado que acompaña la contabilidad de varias sociedades sobre un sistema contable propio. El objetivo público es otro: un skill que le sirva a cualquier pyme chilena y a su dueño, contador o no, en el día a día, y que se mejore entre muchas personas.

Había tres formas de ser útil: una enciclopedia que responde preguntas sueltas, un tenedor de libros que lleva la contabilidad en archivos, o un compañero que trabaja sobre la contabilidad que el usuario ya lleva (en su aplicación, una planilla o con su contador).

## Decisión

- **El skill es un contador compañero.** Sabe contestar preguntas, recomienda en qué cuenta va cada cosa y por qué, según la norma y la realidad particular de la empresa, revisa lo registrado, prepara lo que viene (F29, cierre, F22) y lo explica en simple. No lleva los libros: los registros quedan donde el usuario ya los tiene.
- **Es un contador, no un asistente tributario.** Aplica la NIIF para las PYMES y la ley tributaria chilena, las dos, como un contador. El nombre y la descripción del skill nombran además lo cotidiano (IVA, F29, boletas de honorarios, cierre del mes, F22) para que el agente lo active con esas preguntas.
- **Alcance inicial:** pymes chilenas en Pro Pyme General (14 D N°3), Pro Pyme Transparente (14 D N°8) o régimen general (14 A), de servicios o comercio, y el F22 de su dueño. **Fuera por ahora:** remuneraciones y trabajadores con contrato, agro, construcción con contratos de varios períodos, grupos con consolidación, exportadores de bienes. Lo que está fuera, el skill lo dice y deriva.
- **Lo que no hace:** presentar, firmar o enviar nada ante el SII; asesoría legal; reemplazar la firma de un contador donde la ley la exige.

## Consecuencias

- El skill no necesita definir un formato de libros; sí necesita entender el plan de cuentas y la aplicación del usuario (ADR-002, ADR-003).
- Funciona en cualquier entorno donde el usuario pueda conversar y mostrar lo que tiene, con o sin acceso a archivos.
- Las referencias heredadas del skill privado están organizadas por norma; para el día a día hacen falta además guías por tarea (fase 2 de `docs/PENDIENTES.md`).
