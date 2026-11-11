# Fuentes oficiales: leyes, Diario Oficial y SII

Revisado: 2026-11-03

Los valores, tasas y plazos de este archivo son los vigentes a la fecha que indica cada uno; antes de usarlos para registrar o declarar se confirman en la fuente (ver `donde-buscar.md`).

Catálogo de dónde se lee la norma, cómo se busca dentro de cada fuente y qué tan al día está. Parte de `fuentes.md` (índice). Conserva la numeración original: la sección 4, NIIF para las PYMES, está en `fuentes-niif.md`. Todos los enlaces se comprobaron el **3-11-2026**: respondieron y su contenido es el descrito. Lo que no abrió está marcado **sin verificar**.

En simple: una regla vale lo que vale su fuente. Antes de decir "la ley dice", se abre la ley vigente, se lee el artículo entero y se anota de dónde salió. Este archivo dice dónde está cada cosa y qué trampas tiene cada sitio; qué es lo correcto en cada caso va en `references/niif/` y `references/tributario/`.

## 1. Cómo se cita

Fuente, artículo o punto, enlace y fecha de lectura:

```
[LIR, art. 20, LeyChile idNorma=6368 (versión 2026-10-17), leída 2026-11-03]
[SII, Circular 62/2020, punto 1.5.2, https://www.sii.cl/normativa_legislacion/circulares/2020/circu62.pdf, leída 2026-11-03]
[SII, Oficio Ord. 665 del 01-03-2022, índice de jurisprudencia de renta 2022, leído 2026-11-03]
[NIIF para las PYMES, tercera edición (2025), párrafo A1, ifrs.org, leída 2026-11-03]
```

Lo que no se leyó en la sesión no se cita: se escribe "sin verificar" y qué falta. Un número de artículo, una tasa o un plazo no se cita "porque siempre se ha dicho así".

## 2. Leyes: LeyChile y Diario Oficial

### 2.1 Cómo se lee una ley en LeyChile

La página `https://www.bcn.cl/leychile/navegar?idNorma=<id>` es un cascarón de JavaScript: no trae el texto. El texto completo sale en XML, en `https://www.leychile.cl/Consulta/obtxml?opt=7&idNorma=<id>`. Se pide con WebFetch o con un `curl -s -L` simple, sin disfrazar el `User-Agent`: la revisión del 3-11-2026 recibió 401 con `curl` y el modo automático bloqueó la variante con `User-Agent` de navegador por considerarla evasión de detección. Si no abre por ninguna vía, la cita se marca "sin verificar" y se le dice al usuario; nunca se completa de memoria.

- **Versión vigente a una fecha:** se agrega `&idVersion=AAAA-MM-DD`. Comprobado: el DL 825 pedido con `idVersion=2024-01-01` devuelve la versión del 2022-07-26, y con `idVersion=2020-01-01`, la del 2017-11-03. Es lo que se usa para un hecho de un año anterior. (`&fechaVersion=` no sirve: devuelve la última.)
- **Fecha de la versión:** el atributo `fechaVersion` del elemento `<Norma>` es la de la última modificación incorporada; cada artículo trae además su propio `fechaVersion`, que dice cuándo cambió ese artículo.
- **Para buscar dentro:** quitar las etiquetas y buscar el encabezado exacto (`Art. 2196.` en el Código Civil, `ARTICULO 20°.-` en la LIR, `Artículo 424.-` en el Código de Comercio).
- **Ojo 1, la vigencia de cada cambio se lee en toda la ley modificatoria.** Al 3-11-2026 la LIR en LeyChile (versión 2026-10-17) tiene el art. 20 con la tasa de 23 % de la Ley 21.850 y el literal (k) del art. 14 D N°3 todavía con 0,25 %. No es un atraso: el cambio a 0,23 % (art. 8 N°1 de esa ley) rige desde el 1-1-2029 por la última oración de su art. séptimo transitorio. La primera versión de este catálogo lo leyó mal por mirar solo la regla general de vigencia (art. noveno transitorio); `references/tributario/02-tasas-ley-21850.md` §3 lo corrigió (error 20 de `references/05-errores.md`). Antes de decir desde cuándo rige un cambio, se busca en toda la ley el número del artículo que lo hace (por ejemplo, «número 1 del artículo 8»), en el articulado permanente y en todos los transitorios.
- **Ojo 2, el Código Civil (idNorma 172986) devuelve `fechaVersion="2222-02-02"`** en la norma y en tres partes ajenas al mutuo y al mandato. Parece una vigencia diferida (sin verificar): se lee el `fechaVersion` de cada artículo.
- **Ojo 3, las copias de leyes en el sitio del SII están viejas.** `https://www.sii.cl/pagina/jurisprudencia/leyiva.htm` (que a veces se presenta como jurisprudencia de IVA) es el texto del DL 825 actualizado al 29-7-1998. La ley se lee en LeyChile; el SII mismo enlaza ahí desde `https://www.sii.cl/normativa_legislacion/legislacion_tributaria_basica.html`.

### 2.2 Las normas y su idNorma

Comprobadas el 3-11-2026 con el XML; "versión" es el `fechaVersion` que devolvió.

| Norma | idNorma | Versión al 3-11-2026 | Para qué |
|---|---|---|---|
| LIR, DL 824 de 1974 | 6368 | 2026-10-17 | Renta, regímenes del art. 14, gastos, depreciación, PPM, retenciones |
| Ley del IVA, DL 825 de 1974 | 6369 | 2026-02-05 | Hecho gravado, exenciones, crédito fiscal, notas, remanente |
| Código Tributario, DL 830 de 1974 | 6374 | 2026-10-17 | Plazos, prescripción, fiscalización, multas, conservación |
| Código de Comercio | 1974 | 2023-09-23 | Libros de contabilidad (arts. 25 y 27), sociedad por acciones (arts. 424 y siguientes) |
| Código Civil (DFL 1 de 2000, texto refundido) | 172986 | 2222-02-02 (ver Ojo 2) | Mutuo, mandato, remisión de deudas, intereses |
| Ley 21.210, moderniza la legislación tributaria | 1142667 | 2024-10-24 | Origen del régimen Pro Pyme y de los arts. 21 y 31 actuales |
| Ley 21.755, simplificación regulatoria y promoción de la actividad económica | 1214890 | 2025-07-11 | Rebaja transitoria del impuesto de primera categoría y del PPM del 14 D N°3 (art. 25) |
| DL 3.475 de 1980, timbres y estampillas | 7137 | 2026-01-30 | Impuesto de timbres de los mutuos y otros documentos de crédito |
| Ley 21.850, para la Reconstrucción Nacional y el Desarrollo Económico y Social | **sin verificar** (no la encontré en LeyChile) | — | Cambia las tasas de la LIR desde 2026; ver 2.4 |
| Ley 21.133 (honorarios) y Ley 19.499 (saneamiento de sociedades) | **sin verificar** | — | Las cita la tabla del punto 5; falta su idNorma |

Ubicaciones comprobadas, solo para encontrar el texto (lo que dicen se interpreta en las referencias de conocimiento):

- Código de Comercio: art. 25 (libros obligatorios: diario, mayor, balances, copiador de cartas) y art. 27 (el diario se lleva «por orden cronológico y día por día»); arts. 424 (qué es la SpA), 426 (inscripción y publicación del extracto en sesenta días), 431 (registro de accionistas) y 434 (capital fijado en el estatuto y dividido en acciones nominativas).
- Código Civil: el mutuo se define en el **art. 2196**, no en el 2200 (el 2200 dice que, sin plazo pactado, el pago no se puede exigir antes de diez días desde la entrega); intereses, arts. 2205 y siguientes; el mandato se define en el **art. 2116** (el 2158 son las obligaciones del mandante, entre ellas reembolsar gastos); remisión o condonación de deudas, arts. 1652 y siguientes. Es común ver citado el 2200 como el del mutuo: es un error.

### 2.3 Ley 21.755

Es una ley miscelánea **de simplificación regulatoria y promoción de la actividad económica** (Diario Oficial del 11-7-2025), no una reforma tributaria. Lo tributario está en:

- **Art. 25** (LeyChile lo numera "Artículo 25"; a veces se cita como "art. vigésimo quinto"): baja transitoriamente a 12,5 % el impuesto de primera categoría de las empresas del Régimen Pro Pyme del art. 14 D por las rentas de 2025, 2026 y 2027, siempre que al cierre de cada ejercicio la cotización del art. cuarto transitorio de la Ley 21.735 sea de 1 %, 3,5 % y 4,25 %; rebaja a la mitad sus PPM en esos años, desde la declaración del mes subsiguiente a la publicación; y fija 15 % para 2028 si esa cotización es de 5 % al cierre.
- **Art. 2:** modifica el Código Tributario (no lo leí en detalle).

Leída el 3-11-2026 en el XML de idNorma 1214890.

### 2.4 Ley 21.850 (publicada el 17-10-2026)

Publicada en el Diario Oficial del sábado 17-10-2026, edición 44.576-B, CVE 2888352: https://www.diariooficial.interior.gob.cl/publicaciones/2026/10/17/44576-B/01/2888352.pdf (46 páginas, leído el 3-11-2026). Lo que dice su texto, sin interpretarlo:

- **Art. 8 N°1:** en el literal (k) del art. 14 D N°3 de la LIR (PPM del Pro Pyme), reemplaza 0,25 % por 0,23 % en el número (i) (año de inicio) y en el (ii) (ingresos del año anterior hasta 50.000 UF).
- **Art. 8 N°3:** en el encabezado del art. 20 de la LIR, cambia 25 % por 23 % y elimina las oraciones que fijaban 25 % para el Pro Pyme y 27 % para el 14 A.
- **Art. sexto transitorio:** «sin perjuicio» del art. 20 de la LIR y del art. 25 de la Ley 21.755 respecto del Pro Pyme, la tasa de primera categoría de las rentas de 2026 es 27 %; de 2027, 25,5 %; de 2028, 24 %; y desde 2029, 23 %. Las letras a) y b) no se aplican a los contribuyentes del art. 14 letra G.
- **Art. séptimo transitorio, última oración:** «lo establecido en el número 1 del artículo 8 de esta ley entrará en vigencia el 1 de enero de 2029». El PPM de 0,23 % del 14 D N°3 rige desde 2029, no desde el 1-11-2026.
- **Art. noveno transitorio:** lo que no tiene fecha especial rige desde el primer día del mes siguiente a la publicación (1-11-2026); los números 2 y 4 del art. 8 rigen desde el 1-1-2027. El número 1 sí tiene fecha especial, en el séptimo transitorio.

Cómo quedan las tasas y el PPM de cada régimen por año, y la combinación con el art. 25 de la Ley 21.755, está en `references/tributario/02-tasas-ley-21850.md`.

### 2.5 Diario Oficial

https://www.diariooficial.interior.gob.cl/edicionelectronica/index.php?date=DD-MM-AAAA lista las ediciones del día (puede haber varias, como 44.576-B); cada una se abre con `&edition=<número>` y trae el PDF firmado (CVE) de cada norma. Sirve para leer una ley antes de que LeyChile la incorpore.

## 3. SII

### 3.1 Entrada a la normativa

`https://www.sii.cl/normativa_legislacion/circulares/` **da 404**. La entrada que funciona es `https://www.sii.cl/normativa_legislacion/index_normativa_legislacion.html` (a ella redirige `https://www.sii.cl/normativa_legislacion/`), que enlaza circulares, resoluciones, jurisprudencia administrativa, legislación básica y convenios.

### 3.2 Circulares

- **Índice por año:** `https://www.sii.cl/normativa_legislacion/circulares/AAAA/indcirAAAA.htm` (comprobado 2020, 2025 y 2026). Cada entrada trae número, fecha, materia y área emisora; para buscar, se baja la página y se busca la materia en el texto.
- **PDF:** `https://www.sii.cl/normativa_legislacion/circulares/AAAA/circuNN.pdf`.
- Las muy antiguas pueden estar en otra ruta (`/documentos/circulares/AAAA/`, sin verificar).

Etiquetas corregidas, leídas en los índices de su año:

| Circular | Qué es, según el índice del SII |
|---|---|
| 62/2020 (24-9-2020) | Instruye sobre los nuevos regímenes Pro Pyme del art. 14 letra D de la LIR incorporados por la Ley 21.210, que rigen desde el 1-1-2020. Reemplaza la Circular 43/2016. |
| 53/2020 (10-8-2020) | Instrucciones sobre las modificaciones de los **arts. 21 y 31** de la LIR hechas por los N°11 y 13 del artículo segundo de la Ley 21.210. No es una circular "de incobrables": el castigo de créditos está en el art. 31, entre otras materias. |
| 42/2020 (11-6-2020) | IVA de los servicios prestados por domiciliados o residentes en el extranjero. |
| 53/2025 (3-9-2025) | Disminución transitoria de la tasa del impuesto de primera categoría y de la tasa de PPM de los contribuyentes del **14 D N°3**. No es "la reforma": es la aplicación del art. 25 de la Ley 21.755. |

### 3.3 Resoluciones

- **Índice por año:** `https://www.sii.cl/normativa_legislacion/resoluciones/AAAA/res_indAAAA.htm` (comprobado 2025 y 2026; `res2025.htm` da 404). PDF: `resoluciones/AAAA/resoNN.pdf`.
- Ejemplo de por qué se revisa: la **Res. Ex. SII 38 del 9-3-2026** agrega al F29 la línea 18, códigos 817 y 818 (liquidaciones-facturas), desde el período de julio de 2026 (https://www.sii.cl/normativa_legislacion/resoluciones/2026/reso38.pdf). Las instrucciones del F29 de noviembre de 2024 no los traen.

### 3.4 Jurisprudencia administrativa (oficios)

- **Índice:** https://www.sii.cl/normativa_legislacion/jurisprudencia_administrativa/indice_jadm.htm, con tres materias por año: `ley_impuesto_renta/AAAA/ley_impuesto_renta_jadmAAAA.htm`, `ley_impuesto_ventas/AAAA/ley_impuesto_ventas_jadmAAAA.htm` y `otras_normas/AAAA/otras_normas_jadmAAAA.htm`.
- **Desde 2019** la página carga la lista con JavaScript, así que con `curl` sale vacía. La lista viene de un servicio que se puede pedir directo (comprobado para 2019 a 2026):

  ```
  curl -s -X POST -H 'Content-Type: application/json' \
    -d '{"key":"RENTA","year":"2022"}' https://www3.sii.cl/getPublicacionesCTByMateria
  ```

  `key` es `RENTA` o `IVA` (`OTRAS` devolvió una lista vacía para 2022: **sin verificar** cuál es la clave de "otras normas"). Cada oficio trae número (`pubNumOficio`), fecha, artículo (`pubLegal`), resumen (`pubResumen`) e `idBlobArchPublica`. El PDF se baja con GET:

  ```
  curl -s -G https://www4.sii.cl/gabineteAdmInternet/descargaArchivo \
    --data-urlencode "nombreDocumento=665-01/03/2022.pdf" --data-urlencode "extension=pdf" \
    --data-urlencode "acc=download" --data-urlencode "id=<idBlobArchPublica>" \
    --data-urlencode "mediaType=application/pdf" -o oficio.pdf
  ```
- **Hasta 2018** las páginas por año traen la lista en el HTML (comprobado 2016); antes de 2009, `https://www.sii.cl/pagina/jurisprudencia/adminis/2008/ley_renta2008.htm` y su equivalente por año.
- **Oficio 665/2022, en el SII.** Suele citarse desde buscadortributario.cl, pero está en el índice oficial de renta 2022: Oficio Ordinario N° 665 del 1-3-2022, «Renta – Actual Ley sobre Impuesto a la – Art. 14 Letra D) Nº 3», resumen «Tratamiento de reajustes e ingresos y egresos devengados o adeudados en el régimen de la letra D) del artículo 14». Bajé el PDF del SII y lo leí completo el 3-11-2026: el contribuyente del 14 D N°3 considera solo ingresos percibidos y gastos pagados, y «no deben reconocer las variaciones de activos y pasivos, sea por tipo de cambio o variación de la unidad de fomento, sino hasta cuando estos sean percibidos o pagados»; tampoco los ingresos y egresos devengados o adeudados al 31 de diciembre, salvo operaciones con relacionadas sujetas al régimen 14 A. Cita el Oficio 3497/2021 y la Circular 62/2020.
- También está el Oficio 593 del 26-3-2024 (boletas de honorarios en la DJ 1879), en la lista de renta 2024.

### 3.5 Preguntas frecuentes

- **Entrada:** https://www.sii.cl/preguntas_frecuentes/preguntasfrecuentes.htm (por temática: renta, factura electrónica, boletas de honorarios, beneficios, preguntas generales, bienes raíces). `https://www.sii.cl/preguntas_frecuentes/` da 404.
- Impuestos mensuales (F29 y F50): https://www.sii.cl/preguntas_frecuentes/impuestos_mensuales/arbol_faqs_impuestos_mensuales_2168.htm. Preguntas generales: https://www.sii.cl/preguntas_frecuentes/preguntas_generales/arbol_faqs_preguntas_generales_1907.htm.
- Cada pregunta se cita con su código (`001_140_0501.htm`) y la fecha: cambian sin aviso.

### 3.6 F29

- **Instrucciones:** https://www.sii.cl/servicios_online/instrucciones_f29_20241112.pdf (noviembre de 2024; responde). No encontré una versión más nueva; las resoluciones posteriores las complementan (Res. 38/2026, punto 3.3). Antes de afirmar un código, buscar "Formulario N°29" o "F29" en el índice de resoluciones del año.
- Guía para declarar por internet: https://www.sii.cl/pagina/iva/guia_f29.htm.

### 3.7 F22 del año tributario

- **Instrucciones y suplemento:** https://www.sii.cl/servicios_online/renta/guia_trib_suplemento_2026.html ("Instrucciones Formulario 22 y Guía Práctica de Renta 2026"). Trae un "Control de actualizaciones": revisarlo antes de citar. Las instrucciones por línea se navegan con JavaScript; con `curl` solo sale el índice.
- **Formulario AT2026:** https://www.sii.cl/ayudas/formularios/f22_at2026.pdf.
- **Guía Práctica de Renta 2026** (personas): https://www.sii.cl/servicios_online/renta/guia_practica_renta_2026.pdf.
- **Multas de declaraciones juradas AT2026** (anexo con vencimientos): https://www.sii.cl/ayudas/ayudas_por_servicios/multas_ddjj_at2026.pdf.
- El suplemento de declaraciones juradas que enlaza el mapa del sitio es de 2005: no sirve. **Sin verificar** dónde está el suplemento de declaraciones juradas del AT2027; se busca cuando el SII lo publique.

### 3.8 Calendario tributario

- https://misiir.sii.cl/cgi_calendario/calendario.cgi, por trámite y mes: `?OPT=3&VIEW=2&YEAR=2026&MONTH=11&DAY=1&TYPE=F29`. Comprobado para el F29 de noviembre de 2026: día 11 por internet con pago PEC; 12 con pago en línea; 19 y 20 para facturadores electrónicos que declaran y pagan en sii.cl; 28 sin movimiento y sin pago. **Sin verificar** los valores de `TYPE` para los otros trámites.

### 3.9 Valores: UF, UTM, dólar

- **Índice:** https://www.sii.cl/valores_y_fechas/index_valores_y_fechas.html (también corrección monetaria, impuesto único y datos de IVA y renta).
- **UF diaria:** `https://www.sii.cl/valores_y_fechas/uf/ufAAAA.htm` (el 1-11-2026, $41.252,94).
- **UTM, UTA e IPC:** `https://www.sii.cl/valores_y_fechas/utm/utmAAAA.htm` (noviembre de 2026: UTM $72.440, UTA $869.280).
- **Dólar observado:** `https://www.sii.cl/valores_y_fechas/dolar/dolarAAAA.htm`. La página dice que es el del N°6 del Capítulo I del Título I del Compendio de Normas de Cambios Internacionales del Banco Central, en función de las operaciones del día hábil bancario anterior. La serie oficial del Banco Central: https://si3.bcentral.cl/Siete/ES/Siete/Cuadro/CAP_TIPO_CAMBIO/MN_TIPO_CAMBIO4/DOLAR_OBS_ADO.
- Un valor de un día sale de estas páginas o de una base que los haya cargado desde ellas, nunca de memoria (`references/05-errores.md`, error 2).

### 3.10 Tabla de vida útil

- https://www.sii.cl/valores_y_fechas/tabla_vida_util_activo_inmovilizado.html: tabla fijada por la **Resolución N° 43 del 26-12-2002**, vigente desde el 1-1-2003, con vida normal y acelerada por bien. La página antigua https://www.sii.cl/pagina/valores/bienes/tabla_vida_enero.htm responde, pero en UTF-16; se usa la nueva.
- La resolución misma no la abrí: **sin verificar** si hay modificaciones posteriores a la tabla.

### 3.11 Otras páginas del SII

- Boletas de honorarios: https://www.sii.cl/destacados/boletas_honorarios/.
- Timbres: el SII tiene una copia del DL 3.475 (https://www.sii.cl/pagina/jurisprudencia/legislacion/basica/dl3475.htm), pero el texto vigente se lee en LeyChile (idNorma 7137). Las tasas fijas del DL 3.475 se reajustan por decreto cada semestre (por ejemplo, el de idNorma 1204595, de 2024): **sin verificar** el decreto vigente.
- El mapa del sitio (https://www.sii.cl/mapa/mapa_internet.htm) tiene enlaces de 2004 a 2006: no sirve para lo vigente.

## 4. NIIF para las PYMES

En `fuentes-niif.md`.

## 5. Qué leer antes de afirmar cada tema

| Tema | Fuente principal | Qué se verifica |
|---|---|---|
| Régimen de la empresa | LIR art. 14 (6368); Circular 62/2020 | 14 A, 14 D N°3 o 14 D N°8 y qué régimen rige el año |
| Tasa de primera categoría y PPM | LIR arts. 14 D N°3 (k), 20 y 84; Ley 21.755 art. 25; Ley 21.850 arts. 8 y sexto transitorio; Circular 53/2025 | Tasa del año comercial, tramo, rebaja, desde qué mes. Ver `references/tributario/02-tasas-ley-21850.md` |
| IVA | DL 825 (6369); circulares y oficios de IVA; instrucciones del F29 | Hecho gravado, exención, crédito, notas, remanente |
| F29 | Instrucciones de nov. 2024 más las resoluciones posteriores | Código y línea vigentes en el período |
| Honorarios | LIR art. 74 N°2; Ley 21.133 (idNorma sin verificar); Oficio 593/2024 | Tasa del año, mes de la retención, DJ 1879 |
| Activo fijo | LIR art. 31 N°5; Res. 43/2002 (tabla); Circular 62/2020 | Vida útil, acelerada, depreciación instantánea del 14 D N°3 |
| Préstamos en UF o en dólares en el 14 D N°3 | Código Civil arts. 2196 y 2205; Oficio 665/2022 | Reconocimiento al percibir o pagar; intereses pactados |
| Diferencia de cambio (libro) | NIIF para las PYMES Sección 30 de la edición del año | Partida monetaria, tasa del día y del cierre |
| Partes relacionadas | NIIF para las PYMES Sección 33 | Quién es parte relacionada y qué se revela |
| Incobrables | LIR art. 31 N°4; Circular 53/2020 | Requisitos del castigo |
| Capital y acciones | Código de Comercio arts. 424 a 434; Ley 19.499 (idNorma sin verificar) | Suscripción, pago, inscripción, registro de accionistas |
| Timbres | DL 3.475 (7137) y decreto de reajuste vigente | Hecho gravado, tasa, plazo, quién paga |
| F22 personal | Instrucciones y Guía Práctica del AT | Tramos, rebajas y códigos del año tributario |

## 6. Valores de configuración

Una tasa, un plazo o un código guardado en la configuración de un sistema contable vale solo con su fuente: si está marcado como confirmado, se usa citando esa fuente y mirando si una norma posterior lo cambió (la Ley 21.850 frente a una tabla de tasas anterior); si no está confirmado, es una propuesta y no sirve para afirmar, calcular una cifra que se entrega ni cerrar un mes. Un valor cargado en una base (una tasa, la UF del día) es un dato: se verifica su fuente y su fecha.

## 7. Correcciones ya hechas

Ruta de circulares con 404 (3.1 y 3.2); etiquetas de la Ley 21.755 (2.3) y de las Circulares 53/2025 y 53/2020 (3.2); Oficio 665/2022 leído en el SII (3.4). Además: `leyiva.htm` no es jurisprudencia (2.1), el mutuo es el art. 2196 y el mandato el 2116 (2.2), y el texto de 2015 de la NIIF pide registro en ifrs.org, pero se lee completo en los módulos de la Fundación IFRS (`fuentes-niif.md` 4, corregido el 3-11-2026). Los errores de reglas ya corregidos están en `references/05-errores.md`.

## 8. Cómo verificar una fuente

1. Abrir la fuente oficial, no un resumen, un blog ni una respuesta de un buscador o de una IA.
2. Pedir la versión vigente a la fecha del hecho (`idVersion` en LeyChile) y, si la ley cambió hace poco, leer también la ley modificatoria en el Diario Oficial.
3. Leer el artículo o el punto entero, con su contexto.
4. Buscar si una circular, resolución u oficio posterior lo cambió o lo instruyó (índices del año).
5. Anotar URL, artículo o punto y fecha. Si no abrió, decirlo y no completar con otra fuente.

Errores de cita que no se repiten: citar sin haber leído, citar una circular de otro año o régimen, tomar un foro o una IA como fuente, presentar una interpretación como ley, citar un oficio sin número y fecha, dar por vigente un texto sin mirar su versión.
