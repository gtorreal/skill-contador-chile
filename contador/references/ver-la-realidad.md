# Ver la realidad del usuario: exportaciones, pantallazos y navegador

Revisado: 2026-11-11

Un contador compañero tiene que ver lo que el usuario ve: el documento, el registro de compras y ventas, la cartola, la pantalla de su aplicación. Este archivo dice qué pedir, cómo se baja cada cosa y con qué reglas se recorre la aplicación del usuario.

Orden de preferencia: **un archivo exportado** (trae los montos exactos), después **un pantallazo o un PDF**, y después **la aplicación abierta en un navegador** que el agente pueda recorrer. Si el entorno no permite ninguna de las tres, se le pide al usuario que copie y pegue el dato.

Las rutas de menú del SII cambian. Cada paso dice si se leyó en una página oficial o si solo se vio su descripción; el usuario confirma en pantalla, y si la ruta ya no existe, se busca en sii.cl → Ayuda y se corrige este archivo.

## 1. Lo que se baja del SII

Para todo hace falta entrar a sii.cl con el RUT de la empresa y su clave tributaria (o certificado digital). La clave la escribe el usuario, nunca el agente (§4).

### Registro de Compras y Ventas (RCV) del mes

**Qué es.** El registro que el SII arma solo con las facturas electrónicas que la empresa emitió y recibió. Es la base del IVA del mes y del F29. Lo que no es electrónico (documentos en papel, resúmenes de boletas) el contribuyente lo complementa.

**Cómo se baja.**
1. sii.cl → Servicios online → Factura electrónica → Registro de Compras y Ventas. [La ruta Menú principal / Factura electrónica / Registro de Compras y Ventas aparece en la pregunta frecuente del SII sobre Descargas Diferidas, https://www.sii.cl/preguntas_frecuentes/factura_electronica/001_003_7006.htm, leída 2026-11-11.]
2. Elegir el período (mes y año) y la pestaña Compra o Venta.
3. Usar «Descargar Detalles». El SII no siempre entrega el archivo al momento: lo deja en la sección **Descargas Diferidas** del mismo registro, y desde ahí se baja cuando está listo [misma pregunta frecuente, leída 2026-11-11]. Que el archivo sale en CSV separado por punto y coma: **sin verificar** (es el formato de las cargas masivas del SII; el de la descarga no se vio en una fuente oficial).
4. Repetir para la otra pestaña.

Las preguntas frecuentes del RCV confirman que la consulta permite filtrar por tipo de documento, folio, fechas y montos, ordenar, y «descargar la información en un archivo para su administración» [SII, Preguntas frecuentes del Registro de Compras y Ventas, https://www.sii.cl/ayudas/ayudas_por_servicios/rcv_faqs.pdf, pregunta 16, leído 2026-11-11].

**Qué columnas importan.** Los nombres exactos del archivo descargado no se vieron en una fuente oficial: **sin verificar**. Como referencia, el formato oficial de carga del Registro de Compras usa estos nombres [SII, estructura de archivo CSV de carga de compras, https://www.sii.cl/ayudas/ayudas_por_servicios/formato_compra.csv, leído 2026-11-11], y el archivo descargado trae datos equivalentes:

| Dato | En el formato de carga del SII | Para qué sirve |
|---|---|---|
| Tipo de documento | `Tipo Doc` (un código numérico por tipo de documento; la tabla de códigos no se releyó en esta revisión: **sin verificar** cuál es cuál) | Una nota de crédito resta; una factura exenta no tiene IVA |
| RUT de la contraparte | `Rut Contraparte` | Saber a quién se le compró o vendió |
| Folio | `Folio` | Identificar el documento, buscar duplicados |
| Fecha | `Fecha Emision` | A qué mes va |
| Exento | `Monto Exento` | Parte sin IVA |
| Neto | `Monto Neto` | Base del IVA, y el gasto o ingreso |
| IVA recuperable | `Monto IVA (Recuperable)` | Crédito fiscal del F29 |
| IVA no recuperable | `Cod IVA no Rec` y `Monto IVA no Rec` | IVA que no da crédito: va al costo o al gasto. El código dice por qué (por ejemplo, compras para operaciones exentas o factura registrada fuera de plazo) [SII, instrucciones de llenado de información de compras, https://www.sii.cl/ayudas/ayudas_por_servicios/FormatoyValidacionesCompras.pdf, visto por su descripción en el buscador del SII el 2026-11-11, **sin verificar** su lista completa] |
| Activo fijo | `Monto Activo Fijo` y `Monto IVA Activo Fijo` | La compra va al activo, no al gasto |
| Total | `Monto Total` | Cuadrar con el pago y con la cartola |

Antes de usar un archivo del RCV, el skill revisa: que sea del período pedido, que el total de IVA cuadre con lo que muestra la pantalla del registro, y que las notas de crédito estén restando.

### Boletas de honorarios electrónicas, recibidas y emitidas

sii.cl → Servicios online → Boletas de honorarios electrónicas. Ahí están «Consultar boletas emitidas» (contenido y resumen de las boletas que la persona o empresa emitió) y «Consultar boletas recibidas» (las que otros le emitieron) [SII, Consultas sobre boletas, https://www.sii.cl/boleta_honorarios/consultas.htm, leída 2026-11-11]. Esa página no dice si se pueden exportar. Que el detalle se puede bajar como planilla lo dice una guía del SII de 2011 (https://www.sii.cl/material_inf/ciclo_boleta1.pdf), vista solo por su descripción: **sin verificar** en la pantalla actual. Se consulta por mes y año.

Para qué: la empresa que **recibe** una boleta tiene que retener el impuesto y declararlo en el F29 del mes del pago (ver `references/tributario/05-honorarios.md`). Se cruza el listado de boletas recibidas con lo pagado en la cartola.

### Propuesta del F29 y F29 ya presentados

- **Propuesta y declaración:** sii.cl → Servicios online → Impuestos mensuales → Declarar IVA (F29). Se elige el período y, si el SII tiene una propuesta, aparece con los códigos llenados desde el RCV; quien no tiene propuesta llena el formulario. [Guías del SII «¿Cómo declarar el impuesto mensual, formulario F29?», https://www.sii.cl/destacados/factura_electronica/guias_ayuda/como_declarar_f29.htm, y «Guía para declarar F29 por internet», https://www.sii.cl/pagina/iva/guia_f29.htm, vistas por su descripción en el buscador el 2026-11-11: **sin verificar** las etiquetas exactas de hoy.] El skill **mira** la propuesta con el usuario; enviar la declaración y pagar lo hace el usuario (§4).
- **Los ya presentados:** Impuestos mensuales → Consultas y seguimiento (F29 y F50) → Consulta Integral F29. Muestra cada mes con su folio, su estado y las observaciones del SII (un visto verde si no hay observaciones, una X roja si las hay; «Ver» explica la diferencia). [Guía consulta integral F29, https://www.sii.cl/ayudas/ayudas_por_servicios/2055-guia_consultaf29-2056.html, y pregunta frecuente «¿Qué es la Consulta Integral F29?», https://www.sii.cl/preguntas_frecuentes/impuestos_mensuales/001_130_6543.htm, vistas por su descripción el 2026-11-11: **sin verificar** cuántos años cubre, porque las fuentes dicen seis o siete.]

Para qué: saber qué ya se declaró, con qué cifras, y si el SII tiene observaciones pendientes antes de preparar el mes siguiente.

### Carpeta tributaria electrónica

sii.cl → Servicios online → Situación tributaria → Carpeta tributaria electrónica → Carpeta tributaria regular. Se elige qué incluir, se revisa la vista previa y se genera un PDF con un código para verificarlo. [SII, «¿Cómo puedo compartir mi carpeta tributaria electrónica?», https://www.sii.cl/servicios_online/guia_carpeta_tributaria.pdf, visto por su descripción el 2026-11-11: **sin verificar** los pasos de hoy.] Generarla para uno mismo y guardar el PDF basta; enviarla a otra persona es una decisión del usuario.

Para qué: trae en un documento los datos de la empresa, sus actividades y las últimas declaraciones. Es la forma más rápida de llenar la ficha de la empresa (`references/ficha-empresa.md`).

### Situación tributaria (régimen, actividades, IVA)

- **De la propia empresa:** sii.cl → Servicios online → Situación tributaria, con clave [SII, «Situación tributaria del contribuyente», https://www.sii.cl/como_se_hace_para/situacion_tributaria.html, visto por su descripción el 2026-11-11].
- **De un tercero** (un proveedor o cliente): Situación tributaria → Consultar situación tributaria de terceros. Es de libre acceso, basta el RUT, y muestra un informe resumido: actividades registradas, fecha de inicio de actividades y documentos timbrados; no muestra las declaraciones del tercero. [SII, «Consultar situación tributaria de terceros», https://www.sii.cl/como_se_hace_para/situacion_trib_terceros.html, visto por su descripción el 2026-11-11.]

Que estas pantallas muestren el **régimen tributario** (14 A, 14 D N°3, 14 D N°8) y si las actividades están **afectas a IVA**: **sin verificar**. Si no aparece, se mira en la carpeta tributaria o en el último F22 de la empresa (el régimen se marca ahí), o se le pregunta al contador que hizo el inicio de actividades.

### Estado de los F22

sii.cl → Servicios online → Declaración de renta → Consulta y seguimiento → Consultar estado de declaración, con clave. Se elige el año tributario y se ven el estado, el historial, las observaciones y las cartas de aviso; desde ahí se baja el certificado de la declaración y el F22 compacto enviado. [SII, Servicios online de declaración de renta, https://www.sii.cl/servicios_online/1044-.html, y pregunta frecuente «consultar el estado de la declaración de renta», https://www.sii.cl/preguntas_frecuentes/declaracion_renta/001_140_8380.htm, vistas por su descripción el 2026-11-11.]

Para qué: saber si el F22 del año pasado quedó aceptado, observado o con devolución pendiente, y con qué cifras partió el año (el capital propio tributario y los registros de rentas empresariales del Pro Pyme salen de ahí).

## 2. La cartola del banco

Cada banco la exporta distinto, desde su banca en línea: Excel, CSV o PDF, por mes o por rango de fechas. Se pide **la del mes completo, de cada cuenta de la empresa** (corriente, vista, en dólares), en Excel o CSV si el banco lo permite; el PDF sirve, pero leerlo tiene el mismo riesgo que un pantallazo (§3).

Columnas que se necesitan, se llamen como se llamen en cada banco:

| Dato | Para qué |
|---|---|
| Fecha | A qué mes va el movimiento |
| Descripción o glosa | Quién pagó o a quién se le pagó (a veces trae el RUT) |
| Número de operación o documento | Distinguir dos movimientos iguales |
| Cargo (sale plata) | Pagos, comisiones, impuestos |
| Abono (entra plata) | Cobros, aportes, préstamos recibidos |
| Saldo | Comprobar que no falta ninguna línea |

**Cómo se usa para cuadrar:**
1. El saldo inicial de la cartola tiene que ser el saldo final del mes anterior; y saldo inicial + abonos − cargos = saldo final. Si no da, falta una línea o la cartola está incompleta.
2. Cada movimiento se explica con un documento: un abono, con una factura de venta cobrada; un cargo, con una factura de compra pagada, una boleta de honorarios, el F29 pagado o un retiro del dueño. Lo que no se explica se le pregunta al usuario: el skill no supone de dónde vino una plata.
3. El saldo del banco en la contabilidad, al cierre del mes, tiene que ser igual al de la cartola, o tener cada diferencia explicada (un cheque girado que no se ha cobrado, un depósito en tránsito).

El detalle del cuadre está en `references/04-auditoria.md`.

## 3. Pantallazos y PDF

**Qué pedir:**
- La pantalla completa, no un recorte: que se vean el nombre de la empresa o el RUT, el período o las fechas, y los totales.
- Si la lista es larga, varias capturas en orden, o mejor el archivo exportado.
- El documento entero (la factura completa, no solo el total).

**Cómo se trata lo leído:**
- Leer una imagen puede equivocar un dígito o un separador de miles. Antes de recomendar algo que dependa de una cifra (un asiento, un monto para el F29, una diferencia), el skill **repite los montos que leyó y el usuario los confirma**.
- Si algo no se lee bien (una cifra borrosa, una columna cortada), se dice cuál y se pide de nuevo; nunca se completa con lo más probable.
- Lo que se leyó de una imagen se cita como tal («según el pantallazo del registro de compras de octubre»), para que se sepa de dónde salió.

## 4. El navegador sobre la aplicación contable del usuario

Cuando el agente puede abrir un navegador (por ejemplo, una extensión del navegador o una herramienta de control del equipo), puede recorrer la aplicación contable del usuario para ver cómo registra, cómo se llaman sus cuentas y qué reportes trae.

**Reglas, sin excepción:**
- **El usuario inicia sesión él mismo.** El agente nunca escribe una contraseña, una clave tributaria ni un código de verificación, ni en la aplicación ni en el SII.
- **Solo lectura por defecto:** mirar, leer y anotar.
- **Nada se guarda, emite, paga, anula ni confirma** en la aplicación sin que el usuario lo confirme en ese momento, para esa acción puntual. Una aprobación no vale para la siguiente.
- **En el SII nada se envía ni se presenta.** El agente puede mostrar la propuesta del F29 o la consulta integral; declarar y pagar lo hace el usuario.
- **Los datos que se leen se usan en la conversación y en la carpeta del usuario.** No se mandan a ningún otro sitio ni servicio.
- Si la página pide aceptar términos, autorizar a un tercero o algo que no se esperaba, el agente para y le pregunta al usuario.

**Cómo se recorre y se aprende la aplicación:**
1. Preguntar primero qué aplicación es y para qué la usa el usuario (facturar, llevar la contabilidad, las dos).
2. Recorrer el menú principal y anotar dónde está cada cosa: ingresar una compra, una venta, un pago, un asiento manual; el plan de cuentas; los reportes (libro diario, mayor, balance, estado de resultados).
3. Abrir el plan de cuentas y copiarlo, con sus códigos y nombres. Las recomendaciones del skill usan **las cuentas de ese plan**; si una cuenta del plan modelo no tiene equivalente, se le dice al usuario.
4. Abrir uno o dos registros ya hechos (una factura de compra y su asiento) para ver cómo contabiliza la aplicación de forma automática: muchas generan el asiento solas, y hay que saber qué cuentas usa.
5. Guardar todo en `mapa-de-mi-app.md` (§5) y mostrárselo al usuario.

Si el entorno no tiene navegador, se piden pantallazos de las mismas pantallas, en el mismo orden.

## 5. El archivo `mapa-de-mi-app.md`

Vive en la carpeta del usuario, junto a `ficha-empresa.md`, nunca en el repositorio del skill. Si el entorno no permite guardar archivos, el skill lo entrega como texto para que el usuario lo guarde y lo pegue en la próxima conversación.

Plantilla:

```markdown
# Mapa de mi aplicación contable

Última revisión: aaaa-mm-dd

## La aplicación
- Nombre y versión o plan:
- Para qué la usa la empresa (facturar, contabilidad, remuneraciones):
- ¿Genera asientos automáticos al emitir o recibir documentos? ¿Cuáles?
- ¿Trae las compras y ventas desde el SII sola, o se cargan?

## Dónde se registra cada operación
| Operación | Menú o pantalla | Notas |
|---|---|---|
| Factura de compra | | |
| Factura de venta | | |
| Boleta de honorarios recibida | | |
| Pago a un proveedor | | |
| Cobro a un cliente | | |
| Asiento manual | | |
| Cuadre del banco | | |
| Cierre del mes | | |

## Plan de cuentas
| Código y nombre en la aplicación | Equivale en el plan modelo a | Notas |
|---|---|---|
| | | |

## Reportes útiles y cómo exportarlos
| Reporte | Dónde está | Formato de exportación |
|---|---|---|
| Libro diario | | |
| Libro mayor | | |
| Balance de 8 columnas | | |
| Estado de resultados | | |

## Lo que la aplicación hace distinto de la norma
(Lo que el skill haya visto que no calza; cada punto con qué hace la aplicación y qué dice la norma.)
```

El plan modelo de la columna «Equivale en el plan modelo a» está en `references/plan-de-cuentas-modelo.md`.

**Cuándo se actualiza:**
- Cuando lo que se ve en la aplicación no calza con lo anotado (cambió un menú, apareció una cuenta nueva).
- Cuando el usuario cambia de aplicación o de plan.
- Si la última revisión tiene más de seis meses, el skill propone revisarlo en la próxima sesión con la aplicación abierta.
