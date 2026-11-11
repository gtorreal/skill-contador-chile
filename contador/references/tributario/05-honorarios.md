# Boletas de honorarios: retención, tasa por año, préstamo solidario y F29

Revisado: 2026-11-03

Los valores, tasas y plazos de este archivo son los vigentes a la fecha que indica cada uno; antes de usarlos para registrar o declarar se confirman en la fuente (ver `donde-buscar.md`).

Fuentes leídas el **3-11-2026**. Este archivo cubre solo a quienes le emiten boletas de honorarios a la sociedad, no a trabajadores con contrato. La declaración jurada anual (DJ 1879) está en `08-declaraciones-juradas.md`.

## 1. En simple

Cuando una persona le presta un servicio a la sociedad y le emite una boleta de honorarios, la sociedad no le paga el total: se queda con un porcentaje (la retención) y lo paga al SII en el F29 del mes en que pagó la boleta. Es un adelanto del impuesto de esa persona, no un gasto ni un impuesto de la sociedad. El gasto de la sociedad es el total bruto de la boleta.

Ejemplo: una boleta de $1.000.000 brutos pagada en noviembre de 2026 tiene una retención de 15,25 % ($152.500). La sociedad le transfiere $847.500 a la persona y paga $152.500 en el F29 de noviembre (que se declara en diciembre).

## 2. Quién retiene

Las personas jurídicas en general, y quienes obtienen rentas de primera categoría y están obligados a llevar contabilidad, que paguen rentas del art. 42 N°2 de la LIR (honorarios), retienen con una tasa provisional que el texto permanente fija en 17 % [LIR, art. 74 N°2, LeyChile idNorma=6368 (versión 2026-10-17), leída 2026-11-03]. Una sociedad es persona jurídica: retiene.

## 3. Tasa por año

El 17 % se alcanza por tramos. Tabla del SII [SII, "Aumento gradual de retención de honorarios y protección social", https://www.sii.cl/destacados/boletas_honorarios/aumento_gradual.html, leída 2026-11-03]:

| Año de la boleta | Retención |
|---|---|
| 2024 | 13,75 % |
| 2025 | 14,5 % |
| 2026 | 15,25 % |
| 2027 | 16 % |
| 2028 | 17 % |

La ley que fija el aumento gradual (Ley 21.133, según la página del SII) no se abrió en LeyChile: su idNorma sigue **sin verificar** (`references/fuentes-leyes-sii.md` 2.2). La Ley 21.850 no cambia esta retención: en el art. 74 solo toca el N°4 (impuesto adicional), no el N°2.

**Qué monto se usa:** el SII calcula la retención al emitir la boleta electrónica, y lo que se declara es lo retenido; si el emisor paga su propio PPM, la boleta viene sin retención y va en otro código (152, que declara el emisor). El cálculo con la tasa es solo un control.

## 4. Mes de la retención

- La retención nace cuando la renta **se paga**, se abona en cuenta o se pone a disposición; la boleta se emite al momento de la percepción, y se declara en el F29 del período en que se paga, y después en la DJ 1879 del año del pago. Una boleta emitida antes del pago solo para cobrar no obliga a retener hasta el pago [SII, Oficio Ord. N° 593 del 26-03-2024, Renta, arts. 68 bis, 74 y 82 LIR, PDF en https://www4.sii.cl/gabineteAdmInternet/descargaArchivo?nombreDocumento=Publicaci%C3%B3n%20Oficio%200593-2024.pdf&extension=pdf&acc=download&id=5ac85006-9f6f-4fc4-8036-d7f35e98ab34&mediaType=application/pdf, leído 2026-11-03].
- Plazo: lo retenido en el mes se declara y paga dentro de los primeros doce días del mes siguiente [LIR, art. 78, leída 2026-11-03]; en la práctica, con el F29 y sus fechas del calendario del SII (`06-f29.md` §5).

En simple: no importa la fecha de la boleta, importa cuándo se pagó. Una boleta de octubre pagada en noviembre va en el F29 de noviembre.

Una boleta pagada en abonos merece atención: cada abono se paga en su mes, y conviene revisar con el contador cómo se reparte la retención.

## 5. Préstamo solidario (retención adicional de 3 %)

- Quien pague a un trabajador independiente que pidió el préstamo solidario retiene un 3 % adicional, que va en el código 155 del F29 [instrucciones del F29 de noviembre de 2024, código 155: «Retención sobre rentas del Art. 42 N° 2 LIR con tasa del 3% por reintegro del préstamo tasa 0%, según art. 7 Ley N° 21.242 y art. 9 letra b) Ley N° 21.252», https://www.sii.cl/servicios_online/instrucciones_f29_20241112.pdf, leídas 2026-11-03].
- El SII dice que, para quien pidió el **Préstamo 2020** o el Beneficio Especial para Independientes, la retención adicional aplica solo a las boletas emitidas hasta el 31-12-2024 [SII, "Pagos Préstamo Solidarios 2020 y 2021 - Cómo se aplica la retención adicional del 3%", https://www.sii.cl/destacados/renta/2025/prestamo_solidario_como_aplica_retencion_adicional.html, leída 2026-11-03]. Hasta cuándo sigue para el **Préstamo 2021**: **sin verificar** (la página no lo dice).
- En la práctica, el 3 % lo trae la boleta electrónica, igual que la retención normal; la sociedad no decide a quién aplicárselo.

## 6. En el F29

| Código | Qué va | Fuente |
|---|---|---|
| 151 | Retención de las rentas del art. 42 N°2 (honorarios) | Instrucciones del F29 de nov. 2024, código 151 |
| 152 | PPM de quien emite la boleta sin retención y paga él mismo | Instrucciones del F29, código 152 (lo declara el emisor, no la sociedad) |
| 155 | Retención adicional de 3 % del préstamo solidario | Instrucciones del F29, código 155 |

Detalle de las demás líneas: `06-f29.md`.

## 7. En la contabilidad

Lo que se le debe al prestador va a una cuenta de pasivo «Honorarios por pagar» y la retención a «Retenciones por pagar»; el gasto, a costo o a gasto de administración según para qué fue el servicio. El gasto es el bruto de la boleta.

## 8. Lo que puede salir mal

- Pagar el líquido y olvidar declarar la retención en el F29 del mes del pago: la retención no enterada tiene multa e intereses (art. 97 N°11 y art. 53 del Código Tributario, leídos el 3-11-2026: `06-f29.md` §6).
- Declarar la retención en el mes de la boleta y no en el del pago.
- Una boleta de honorarios de un extranjero sin domicilio, o un pago a una persona que parece trabajador con jornada y subordinación: no es este archivo. Lo primero es impuesto adicional (art. 74 N°4); lo segundo, remuneraciones, que el skill avisa.
