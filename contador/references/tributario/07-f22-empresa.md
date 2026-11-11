# F22 de la empresa, renta líquida imponible y capital propio tributario

Revisado: 2026-11-03

Los valores, tasas y plazos de este archivo son los vigentes a la fecha que indica cada uno; antes de usarlos para registrar o declarar se confirman en la fuente (ver `donde-buscar.md`).

Qué declara cada sociedad en abril, cómo se llega desde el resultado del libro (NIIF) a la base del impuesto, y qué es el capital propio tributario. Fuentes leídas el **3-11-2026**. Las tasas por año están en `02-tasas-ley-21850.md`; los regímenes, en `01-regimenes.md`; el impuesto diferido, en `references/niif/08-impuesto-ganancias.md`.

## 1. En simple

Una vez al año, en abril, cada sociedad presenta el **Formulario 22 (F22)**: dice cuánto ganó para el SII en el año anterior, calcula el impuesto de primera categoría, le descuenta los PPM que fue pagando cada mes en el F29, y el resultado es un pago o una devolución.

La ganancia para el SII (la **base imponible**, o **renta líquida imponible** en el 14 A) casi nunca es igual a la utilidad del libro. El libro sigue la NIIF para las PYMES: reconoce lo que pasó, se haya cobrado o no. El impuesto sigue la ley: en el Pro Pyme General (14 D N°3) cuenta lo cobrado y lo pagado, deprecia el activo fijo de una vez y no reconoce el reajuste de un préstamo en UF hasta pagarlo. La diferencia entre las dos cifras se explica con una conciliación, y la parte que se revierte en el futuro es lo que la NIIF llama impuesto diferido.

Además, el F22 lleva el **capital propio tributario**: cuánto patrimonio tiene la sociedad para el SII. Sirve para la patente municipal (`10-patente-conservacion.md`) y para controlar los retiros.

## 2. Quién declara y cuándo

- Presentan declaración anual los contribuyentes de primera categoría, por las rentas del año comercial anterior [LIR, art. 65 N°1, LeyChile idNorma=6368 (versión 2026-10-17), leída 2026-11-03]. Que declare también la sociedad que no tuvo movimiento es criterio fundado: el art. 65 N°1 no la exime.
- Se presenta **en abril** de cada año [LIR, art. 69, encabezado]. El F22 de abril de 2027 es el año tributario 2027, que declara el año comercial 2026.
- En el Pro Pyme, el SII pone en el sitio personal, entre el 15 y el 30 de abril, la información que tiene (sobre todo el Registro de Compras y Ventas) para que la empresa declare complementándola; eso no la libera de rectificar si la información estaba mal [LIR, art. 14 D N°3 letra (a)].
- **Sin verificar:** las fechas exactas de la Operación Renta 2027 (el último día por internet con y sin pago). El SII las publica cada año; se leen en el calendario (`references/fuentes-leyes-sii.md` 3.8) antes de avisar.

## 3. Cómo se determina la base en el 14 D N°3

Regla general: la base imponible es la suma de los **ingresos del giro percibidos** en el año menos los **gastos o egresos pagados** en el mismo año, salvo las operaciones con relacionadas del 14 A, que van devengadas [LIR, art. 14 D N°3 letra (f), leída 2026-11-03]. Reglas especiales del mismo artículo:

| Partida | Regla | Fuente (art. 14 D N°3) |
|---|---|---|
| Activo fijo | Se rebaja entero el año de la compra (depreciación instantánea) | letra (d) |
| Existencias e insumos | Gasto el año en que se compran | letra (e) |
| Venta de acciones o inversiones | Al percibir el precio se rebaja el costo reajustado por IPC | letra (f)(i) y (ii) |
| Dividendos de sociedades 14 A o 14 D N°3 | **No forman parte de la base** | letra (f)(i), párrafo segundo |
| Gastos pagados | Compras, servicios, remuneraciones, honorarios, **intereses** e impuestos que no sean de la LIR, efectivamente pagados; también las pérdidas de ejercicios anteriores y los incobrables castigados | letra (f)(ii) |
| Compras en cuotas | Solo las cuotas pagadas en el año | letra (f)(ii) |
| Requisitos de cada gasto | Se aplica el art. 31 (necesario y acreditado), «considerando la naturaleza de Pyme» | letra (f)(ii), párrafo final |
| Corrección monetaria | Liberada | letra (c) |

El formulario lo ordena así: el **Recuadro N°17** del F22 AT2026, «Base imponible Régimen Pro Pyme (art. 14 letra D) N°3 LIR) percibido o pagado», con líneas de total de ingresos anuales, «Intereses y reajustes pagados por préstamos y otros», «Adquisición de bienes del activo fijo, pagados», «Arriendos pagados», «Honorarios pagados», «Partidas del art. 21 inc. 1° y 3° LIR pagados», pérdidas de ejercicios anteriores y la línea final «Base Imponible afecta a IDPC o pérdida tributaria del ejercicio»; el **Recuadro N°18**, la determinación de las rentas afectas a impuestos finales (RAI), y el **Recuadro N°19**, el capital propio tributario simplificado (CPTS) [SII, Formulario 22 AT2026, https://www.sii.cl/ayudas/formularios/f22_at2026.pdf, leído 2026-11-03]. Los códigos de cada línea no se leyeron en esta sesión (el texto del PDF separa los números de las glosas): **sin verificar** el número de cada línea.

**Gastos rechazados.** Lo que no cumple el art. 31 no se rebaja. Si además es un desembolso que beneficia al dueño o a un relacionado, o no se acredita su naturaleza, paga un impuesto único de 40 % (art. 21, inciso primero) o, si beneficia al socio persona natural, se le grava a él con global complementario más 10 % (inciso tercero). No pagan el 40 % el propio impuesto de primera categoría, el impuesto territorial, ni los intereses, reajustes y multas pagados al Fisco o a las municipalidades [LIR, art. 21, incisos primero a tercero, leída 2026-11-03]. Si esos intereses y multas son gasto aceptado lo regula el art. 33, que no se releyó en esta sesión: **sin verificar** en esta referencia.

## 4. El 14 A

En el 14 A la renta líquida imponible se arma desde el resultado según contabilidad completa con los arts. 29 a 33 (ingresos brutos, costo, gastos del art. 31, y los agregados y deducciones del art. 33), con corrección monetaria (art. 41). En el F22 es el **Recuadro N°12**, «Base imponible de primera categoría» [Formulario 22 AT2026, leído 2026-11-03]. En esta sesión se leyeron el art. 31 N°1 y N°2 y el art. 21; **los arts. 29, 30, 33 y 41 no se leyeron**: antes de preparar un F22 de una sociedad 14 A hay que leerlos, y la corrección monetaria normalmente la hace un contador en su hoja de trabajo.

Una sociedad 14 A presenta además las DJ 1847 y 1926 (`08-declaraciones-juradas.md`).

## 5. Capital propio tributario

En simple: es el patrimonio de la sociedad medido con las reglas del SII. No es el patrimonio del libro.

- **Pro Pyme (14 D N°3) — simplificado (CPTS).** Al 1 de enero de cada año es la diferencia entre (a) el capital aportado formalizado, más las bases imponibles de primera categoría de cada año, más las rentas percibidas por participaciones en otras empresas, y (b) las disminuciones de capital, las pérdidas, los gastos rechazados del inciso segundo del art. 21 pagados y los retiros y distribuciones a los dueños. El SII lo informa a la empresa para que lo complemente o rectifique [LIR, art. 14 D N°3 letra (j), leída 2026-11-03]. En el F22 es el Recuadro N°19, que parte del CPTS inicial, suma el capital aportado de las empresas que inician actividades en el año, los aumentos de capital, la base imponible y los dividendos percibidos, y resta las pérdidas, las disminuciones de capital y los retiros repartidos [F22 AT2026, Recuadro N°19, leído 2026-11-03].
- **14 A:** el del art. 41 de la LIR (sin leer en esta sesión).
- **Para qué sirve:** es la base de la patente municipal; el Pro Pyme paga patente sobre su CPTS (DL 3.063, art. 24, `10-patente-conservacion.md`).

**Ejemplo, criterio fundado.** Una sociedad que inicia actividades en el año con capital suscrito parte su primer CPTS del capital aportado formalizado. Si las acciones se pagan después de la constitución, qué cuenta como «aportado» al cierre depende de cuándo y cómo se pagaron: es un hecho que se revisa con el abogado y el contador, no se presume.

## 6. Del resultado NIIF a la base tributaria: diferencias habituales

| Diferencia | Libro (NIIF) | Base del 14 D N°3 | ¿Se revierte? |
|---|---|---|---|
| Factura emitida y no cobrada al 31-12 | Ingreso del año | No entra hasta cobrarla (art. 14 D N°3 (f)) | Sí: temporaria |
| Factura recibida y no pagada | Gasto del año | No se rebaja hasta pagarla | Sí: temporaria |
| Activo fijo | Se deprecia en su vida útil | Se rebaja entero el año de compra (letra (d)) | Sí: temporaria |
| Reajuste de un préstamo en UF | Se reconoce al cierre (`references/niif/03-instrumentos-financieros.md`) | Solo al pagarlo (Oficio SII 665/2022, `01-regimenes.md` §3) | Sí: temporaria |
| Diferencia de cambio de una cuenta en dólares | A resultado al cierre (`references/niif/07-moneda-extranjera.md`) | Solo al percibirla o pagarla (mismo oficio) | Sí: temporaria |
| Dividendo percibido de una 14 A o 14 D N°3 | Ingreso | Fuera de la base (letra (f)(i)) | No: permanente |
| Multa o interés pagado al Fisco o a la municipalidad | Gasto | No se rebaja | No: permanente |
| Gasto sin respaldo o que beneficia al socio | Gasto | Rechazado, con el art. 21 | No: permanente |
| Impuesto de primera categoría del año | Gasto por impuesto | No es gasto | No: permanente |

Las temporarias generan impuesto diferido; cómo se mide y con qué tasa está en `references/niif/08-impuesto-ganancias.md` (la tasa del año en que se revierta, `02-tasas-ley-21850.md` §2).

## 7. Cómo se prepara

El impuesto del año se provisiona al 31-12 y se presenta neto de los PPM al cierre. La conciliación del resultado NIIF con la base del 14 D N°3 se arma con la tabla del §6 desde los reportes del libro, y se marca como borrador para el contador que firma el F22.

## 8. Lo que puede salir mal

- Declarar la utilidad del libro como base del Pro Pyme: paga impuesto por lo no cobrado, o deja fuera lo cobrado de años anteriores.
- Rebajar como gasto el impuesto de primera categoría o una multa fiscal.
- Olvidar que los dividendos que recibe una sociedad de inversiones no van a la base, pero sí cuentan como renta pasiva para el límite del 35 % (`01-regimenes.md` §2).
- Usar el F22 para corregir un error de un año anterior en el libro: el error se corrige en el libro (`references/niif/02-politicas-estimaciones-errores.md`), y el F22 de ese año se rectifica si cambió la base.
