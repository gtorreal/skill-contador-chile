# ADR-004: Lo estable se escribe; lo que cambia se busca

## Estado

Aceptada el 11 de noviembre de 2026 por gtorreal.

## Contexto

La norma chilena cambia todos los años (la Ley 21.850 de octubre de 2026 cambió tasas y PPM de las pymes). Un skill con un valor de un año usado al siguiente responde con seguridad algo falso, que es peor que no responder. gtorreal mantendrá el repositorio, pero no puede depender de que cada valor esté al día.

## Decisión

- **Lo estable se escribe** en las referencias, con su fuente y la fecha de lectura: cómo funciona el IVA, qué es gasto aceptado, cuándo se reconoce un ingreso, los requisitos de un régimen. Cambia poco y buscarlo cada vez agrega errores y lentitud.
- **Lo que cambia seguido se busca** en la fuente oficial al momento de usarlo: la UTM y la UF del mes, los plazos del año, los tramos del F22, tasas transitorias, circulares nuevas. `contador/references/donde-buscar.md` trae, por cada dato, la URL oficial exacta, cómo se lee (algunas páginas de LeyChile y del SII no traen el texto sin JavaScript; ahí se dice qué otra dirección usar) y el **plan B**: si el agente no puede abrirla, le pide al usuario que entre a esa página y le pegue el valor.
- **Cada referencia lleva su fecha de última revisión** (`Revisado: aaaa-mm-dd`). Si tiene más de 12 meses, el skill lo avisa antes de usarla para registrar o declarar, y busca si la norma cambió.
- **Las respuestas que dependen de un valor que cambia dicen de qué fecha es** («según lo vigente al 11-2026»).

## Consecuencias

- La mantención se concentra en dos cosas: lo estable, cuando cambia una ley, y el mapa de dónde buscar, cuando el SII mueve una página.
- Un agente sin acceso a la web sigue funcionando con el plan B, a costa de pedirle más al usuario.
