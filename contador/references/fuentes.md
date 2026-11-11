# Fuentes oficiales: índice

Revisado: 2026-11-11

Dónde se lee la norma, cómo se busca dentro de cada fuente y qué tan al día está. El catálogo está partido en dos y conserva una sola numeración de secciones: una cita `fuentes.md 3.4` se lee en el archivo que tiene esa sección.

En simple: una regla vale lo que vale su fuente. Antes de decir "la ley dice", se abre la ley vigente, se lee el artículo entero y se anota de dónde salió.

| Archivo | Secciones | Qué trae |
|---|---|---|
| `fuentes-leyes-sii.md` | 1 a 3 y 5 a 8 | Cómo se cita; LeyChile (versión vigente a una fecha) y el idNorma de cada ley; Ley 21.755 y Ley 21.850; Diario Oficial; SII: circulares, resoluciones, oficios (y cómo bajarlos), preguntas frecuentes, F29, F22, calendario, UF, UTM, dólar y vida útil; qué leer antes de afirmar cada tema; valores de configuración; correcciones ya hechas; cómo verificar una fuente |
| `fuentes-niif.md` | 4 | NIIF para las PYMES: tercera edición (2025) en ifrs.org, edición de 2015 en los módulos de la Fundación IFRS, textos en español, qué edición rige y cómo se corresponden los párrafos (tabla A1) |

Lo que es correcto en cada caso no va aquí: va en `references/niif/` y `references/tributario/`.

## Revisión de vigencia

Cada referencia dice cuándo se leyó su fuente. Una ley, una circular o un calendario nuevos la dejan atrás sin que el texto lo note, así que se vuelve a leer la fuente:

- **Antes de usar una tasa, un plazo o un código para declarar o cerrar**, si su lectura tiene más de seis meses: se relee y se actualiza la fecha en la referencia.
- **En marzo y en septiembre**, una pasada por las tablas de cifras y plazos (`tributario/02-tasas-ley-21850.md`, `tributario/05-honorarios.md`, `tributario/06-f29.md`, `tributario/08-declaraciones-juradas.md`, `calendario.md`).
- **Cuando aparezca alguna de estas fuentes**, que al 3-11-2026 faltaban:

| Fuente esperada | Qué cambia | Dónde |
|---|---|---|
| Circular del SII sobre la Ley 21.850 | Tasa del Pro Pyme desde 2029 (hoy criterio fundado) y la transición de los créditos | `tributario/02-tasas-ley-21850.md` §2 y §7; `tributario/11-f22-personal.md` |
| Calendario tributario de 2027 del SII | Plazos del F29 de 2027 (hoy criterio fundado) | `calendario.md` §3 |
| Operación Renta 2027 del SII | Día del F22 de abril de 2027 (hoy sin verificar) | `calendario.md` §4 |
| Instrucciones de las DJ 1879 y 1948 del AT2027 | Si una EIRL presenta la 1948 junto con el F22 | `calendario.md` §5; `tributario/08-declaraciones-juradas.md` §4 |
| Resolución del SII con el interés penal de cada semestre | Costo de un F29 atrasado | `tributario/06-f29.md` §6 |
| Inicio del ejercicio 2027 | Rige la tercera edición de la NIIF para las PYMES | `niif/README.md` |

Si lo releído cambia algo, se corrige la referencia en la misma tarea y, si el sistema contable que se use queda distinto de la norma, se avisa (`SKILL.md`, "Advertencia").
