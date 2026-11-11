# Errores del pasado

Revisado: 2026-11-03

Catálogo de errores reales cometidos al llevar la contabilidad de pymes chilenas con un agente. Si reconoces uno de estos patrones en lo que estás por hacer, para y pasa la lista que corresponda (`02-listas.md`).

| # | Error | Causa | Antídoto |
|---|---|---|---|
| 1 | Cifras de las notas de contexto que no calzaban: clave interna en vez de comprobante, asiento que ya era otro, reversos que figuraban pendientes, "anular 18-20" sin empresa. | Documento actualizado desde la conversación, sin reconsultar la base. | Consulta con empresa, clave y número, fecha; revalidar después de cada reverso. |
| 2 | UF del día siguiente en el anexo de un mutuo. | Copia manual de un valor que depende de la fecha. | UF del día del hecho, de la fuente oficial; guardar el valor usado; no copiar a mano. |
| 3 | Patente municipal registrada dos veces. | El mismo gasto por dos caminos, sin búsqueda previa. | Buscar por RUT, monto, fecha y documento antes de registrar. |
| 4 | Caja contada dos veces en un préstamo. | La línea del banco incluyó la caja y el préstamo también. | Banco = transferencia; préstamo = transferencia − caja; conciliar. |
| 5 | Rendición con la cotización en vez de la factura; préstamo atribuido a quien pagó y no al prestamista. | Se creyó la conversación en vez del documento y el origen del dinero. | Leer folio, fecha y monto; rastrear la transferencia; preguntar. |
| 6 | Un depósito grande clasificado como desembolso de crédito. | Se infirió el origen; solo el usuario lo sabía. | Preguntar cuando el hecho no está en la fuente; marcar por confirmar. |
| 7 | Cesiones de acciones hechas y deshechas en tres días. | Estructura legal ejecutada sin mostrar su efecto completo. | Ficha de decisión con dueño, alternativas y efectos; abogado y contador. |
| 8 | PPM del 14 D N°8: 0,25 % en el tramo inferior en vez de 0,2 %; sobre 50.000 UF son 0,5 %. | Dato sin confirmar usado como regla. | Leer la Circular 62/2020; no calcular con un valor sin confirmar. |
| 9 | Seis de ocho vidas útiles mal; la acelerada calculada dividiendo la normal por tres en vez de copiada. | Tabla completada de memoria. | La ley la define como un tercio de la vida fijada (LIR art. 31 N°5), pero el SII ya la trae en años enteros en su columna (80 da 26, 7 da 2): copiar la fila de la tabla con su fuente, sin calcular. |
| 10 | Art. 55 bis interpolado. | Matemática propia en vez de la ley. | Leer el artículo, transcribir la fórmula, probar los bordes. |
| 11 | Códigos del F29 incompletos. | Catálogo de memoria. | Leer las instrucciones del F29; confirmar cada código. |
| 12 | "Al cierre" en un 14 D N°3 que no revaloriza. | Lógica del 14 A aplicada sin comprobar el régimen. | Leer el régimen y la decisión registrada antes de afirmar cuándo se reconoce. |
| 13 | Un tipo de cambio pactado entre las partes presentado como regla cuando era interpretación. | Se cerró una lectura sin el contador. | Etiquetar interpretación, mostrar alternativas y preguntar. |
| 14 | Ese tipo de cambio pactado usado como tipo de cambio contable en asientos de la cuenta en dólares. | Convención de negocio aplicada al libro. | El banco va al dólar observado; el precio del convenio es otra cosa. |
| 15 | Plan de los préstamos en UF escrito de memoria. | No se leyó el código antes de escribirlo. | Leer funciones y rutas, citar `ruta:línea`, lista fija, dos rondas. |
| 16 | El archivo de pendientes vaciado por un script. | `open(p,'w')` antes de leer. | Leer primero; temporal y renombrar; fallar si queda vacío. |
| 17 | Reimputación escrita directo en la base, saltándose el servicio. | Se quiso "deshacer el error como si nunca hubiese pasado". | Usar el servicio; si rechaza, parar; no SQL directo. |
| 18 | Pagos con glosa de número de operación. | La glosa salió del banco, no del hecho. | Glosa con qué, a quién y documento; la operación es referencia. |
| 19 | Reversos con motivo "cambio de estrategia". | No se nombró el hecho ni el reemplazo. | Motivo específico; ficha de decisión antes de revertir. |

## Señales de que estás por repetir uno

- Estás por escribir una cifra que no consultaste en esta sesión.
- Estás por decir "siempre se ha hecho así" o "la norma dice" sin enlace.
- Estás por afirmar que algo "al cierre" cambia, sin mirar el régimen.
- Estás por decidir entre dos tratamientos sin preguntar al contador.
- Estás por escribir en la base sin copia ni ensayo en copia.
- Estás por abrir un archivo existente en modo escritura.
- Estás por anular para "mejorar la glosa" sin haber leído el documento.
- Estás por dar un plan por bueno porque "ya lo revisamos", sin lista fija.
- Estás por decir "los números calzan" sin la consulta delante.

## Los tres más caros

1. **Las cesiones:** seis asientos, seis reversos y tres días, más una decisión de diseño enmendada y una función desplegada sin uso.
2. **El plan de los préstamos en UF:** tres versiones y dos revisiones por escribirlo de memoria.
3. **La reimputación directa:** dos hallazgos de auditoría y una corrección que no se puede deshacer desde el sistema.

## Errores del propio skill

- **20. Vigencia leída solo en la regla general** (3-11-2026). El primer catálogo de fuentes del skill, y su revisión, dieron el PPM de 0,23 % de la Ley 21.850 por vigente desde el 1-11-2026 porque leyeron el art. noveno transitorio (lo que no tiene fecha especial rige el mes siguiente) y no la última oración del séptimo, que lo deja para el 1-1-2029. Lo corrigió `references/tributario/02-tasas-ley-21850.md` el mismo día, antes de que se usara. Antídoto: la fecha desde la que rige un cambio se busca en toda la ley por el número del artículo que lo hace, en el articulado permanente y en todos los transitorios (`references/fuentes-leyes-sii.md`, 2.1, "Ojo 1").
