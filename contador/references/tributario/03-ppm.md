# PPM: qué es, sobre qué se calcula y cuándo se suspende

Revisado: 2026-11-03

Los valores, tasas y plazos de este archivo son los vigentes a la fecha que indica cada uno; antes de usarlos para registrar o declarar se confirman en la fuente (ver `donde-buscar.md`).

Fuentes leídas el **3-11-2026**. Las tasas por régimen y año, con la Ley 21.755 y la Ley 21.850, están en `02-tasas-ley-21850.md`; los códigos del F29, en `06-f29.md`.

## 1. En simple

El PPM (pago provisional mensual) es un adelanto del impuesto anual a la renta. Cada mes, en el F29, la sociedad paga un porcentaje de lo que vendió (14 A) o de lo que cobró (Pro Pyme). En abril, en el F22, se compara lo adelantado con el impuesto del año: si se adelantó de más, el SII lo devuelve o lo imputa; si de menos, se paga la diferencia. Por eso un PPM mal calculado no es plata perdida, pero sí un error en una declaración, y un PPM de menos se paga con reajuste e intereses.

## 2. Quién lo paga

Los contribuyentes que declaran primera categoría sobre renta efectiva hacen PPM sobre sus ingresos brutos mensuales [LIR, art. 84 letra a), LeyChile idNorma=6368 (versión 2026-10-17), leída 2026-11-03]. En el Pro Pyme la regla especial es el literal (k) del art. 14 D N°3 [misma fuente]. El 14 D N°8, aunque está liberado del impuesto de primera categoría, también tiene PPM propio (Circular SII 53/2025, punto 2.1, que lo menciona al excluirlo de la rebaja).

## 3. Base del PPM

**14 A.** Los ingresos brutos del mes, percibidos o devengados, determinados según el art. 29; no cuentan las ventas por cuenta de terceros ni los reembolsos de gastos hechos por cuenta del cliente, si están documentados y registrados uno por uno [LIR, art. 84 a), incisos primero y cuarto, leída 2026-11-03].

**14 D N°3.** La suma de los ingresos **percibidos** del giro en el mes, que sean **habituales**; se agregan los devengados de operaciones con relacionadas del 14 A, y se excluyen la venta o el rescate de inversiones en acciones, derechos o cuotas, y los ingresos extraordinarios o esporádicos [Circular SII 62/2020, puntos 1.8.1 y 1.8.5, https://www.sii.cl/normativa_legislacion/circulares/2020/circu62.pdf, leída 2026-11-03]. Los dividendos de sociedades 14 A o 14 D N°3 no forman parte de la base imponible del 14 D N°3 [LIR, art. 14 D N°3 (f)(i), leída 2026-11-03]; que tampoco entren en la base del PPM (una sociedad de inversión Pro Pyme no paga PPM por sus dividendos ni por la venta de acciones) es criterio fundado que se sigue de lo anterior.

En simple: en el Pro Pyme, si la sociedad factura en noviembre y el cliente paga en diciembre, el PPM se paga en el F29 de diciembre (sobre lo cobrado en diciembre), no en el de noviembre.

**Anticipos de clientes.** Si la base del Pro Pyme es lo percibido (arriba) y la renta percibida es la que «ha ingresado materialmente al patrimonio» (LIR, art. 2 N°3, leída 2026-11-03), lo normal es que un anticipo o reserva cobrado sin factura entre en el mes del cobro. Si la factura del servicio se emite en el mismo mes del cobro, como manda el art. 55 del DL 825 (`04-iva.md` §2), no hay diferencia; el riesgo aparece cuando se factura después de cobrar y la base se arma por factura. Una herramienta que cuente el anticipo recién al aplicarlo a la factura puede dejar corto el PPM del mes del cobro. Recomendación provisional: facturar en el mes del cobro; si no se hizo, confirmar con un contador antes de declarar.

Qué ventas son habituales, para la base del Pro Pyme, se decide caso a caso con el giro de la sociedad.

**Base negativa:** nunca. Si las notas de crédito superan a las ventas, la base es cero y lo pagado de más se recupera en el F22 (art. 84 y punto 4 de las instrucciones del F29; ese punto se releyó: solo admite negativos los códigos 538, 743, 745, 537 y 596).

## 4. Tasa

- **Pro Pyme:** tabla legal, por tramo de ingresos del año anterior (o año de inicio) y por período: `02-tasas-ley-21850.md` §3. Los ingresos del año anterior se expresan en UF al valor del último día de ese año (Circular SII 53/2025, punto 2.2, leída 2026-11-03).
- **14 A:** porcentaje propio de cada sociedad, que rige de abril a marzo; 1 % si no se puede determinar (pérdida o primer ejercicio) [LIR, art. 84 a), inciso segundo y tercero, leída 2026-11-03]. Lo que cambia la Ley 21.850 en 2027 a 2029: `02-tasas-ley-21850.md` §4.
- **En el F29**, la tasa del 14 A va en el código 115 con un solo decimal; el monto, en el 62 (`06-f29.md`).

## 5. Suspensión por pérdidas

Quien tuvo pérdida tributaria en un año comercial puede suspender los PPM de los ingresos del primer trimestre del año siguiente; si la pérdida se mantiene o se produce en el primer, segundo o tercer trimestre, puede suspender los del trimestre siguiente; con utilidad en un trimestre, se reanudan desde el trimestre siguiente. Hay que tener a disposición del SII un estado de pérdidas y ganancias acumulado al trimestre, ajustado a las reglas de la renta líquida imponible [LIR, art. 90, leída 2026-11-03]. Vale para el 14 D N°3 [Circular SII 62/2020, punto 1.8.4, leída 2026-11-03]. En el F29, la pérdida se anota en el código 30 de la línea del PPM y no se llenan las otras columnas; una pérdida absorbida por utilidades del registro FUT no da derecho a suspender [instrucciones del F29 de noviembre de 2024, línea del PPM, https://www.sii.cl/servicios_online/instrucciones_f29_20241112.pdf, leídas 2026-11-03].

En simple: es optativo («podrán»). Una sociedad nueva con pérdida el primer año puede no pagar PPM los primeros meses del año siguiente, pero tiene que poder mostrar la pérdida. **Requiere decisión del dueño** cada vez que una sociedad cierre con pérdida tributaria.

## 6. PPM voluntarios

Se pueden pagar PPM voluntarios por cualquier monto; se pueden imputar a los PPM obligatorios posteriores del mismo ejercicio comercial, con reajuste hasta el mes anterior a su imputación [LIR, art. 88, leída 2026-11-03; Circular SII 62/2020, punto 1.8.6].

## 7. Anticipos de clientes cobrados antes de prestar el servicio

Que un anticipo cobrado antes de prestar el servicio (por ejemplo, el pago adelantado de una excavación con retroexcavadora) entre a la base del PPM del Pro Pyme del mes del cobro es **criterio fundado**: la base es lo percibido (art. 14 D N°3 (f) y Circular 62/2020, 1.8.5), y un anticipo de cliente ya ingresó al patrimonio. Lo cambiaría un oficio del SII que trate el anticipo de cliente en el Pro Pyme como no percibido: se buscó en sii.cl el 3-11-2026 y no se encontró (lo que apareció, la Circular 31/2023, trata del PPM en operaciones del art. 107, no de esto). En el libro NIIF ese cobro es un pasivo hasta prestar el servicio (`references/niif/05-ingresos.md`).
