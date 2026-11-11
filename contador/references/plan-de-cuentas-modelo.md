# Plan de cuentas modelo

Revisado: 2026-11-11

## Antes de usarlo

- **No hay un plan de cuentas oficial obligatorio en Chile.** Cada aplicación contable trae el suyo y cada empresa lo adapta. Este es un modelo para una pyme de servicios o comercio, con nombres en lenguaje de la NIIF para las PYMES. Criterio fundado: no se encontró una norma del SII que imponga un plan; si un usuario o su contador muestran una que lo exija para su caso, manda esa.
- **Siempre se recomienda la cuenta del plan del usuario.** Este modelo sirve para (1) razonar en qué tipo de cuenta va algo y (2) traducir al nombre que tiene en su aplicación. Si el usuario no tiene plan, se parte de este y se recortan las cuentas que no use.
- **Los códigos son ilustrativos.** La estructura (1 activo, 2 pasivo, 3 patrimonio, 4 ingresos, 5 costos y gastos) es la habitual; el número exacto lo pone la aplicación del usuario.

## El plan

### 1. Activo (lo que la empresa tiene o le deben)

| Código | Cuenta | Qué va aquí |
|---|---|---|
| 1101 | Caja | Efectivo. En una pyme suele ser poco o nada. |
| 1102 | Banco (una por cuenta) | Saldo de cada cuenta corriente; se cuadra con su cartola. |
| 1103 | Banco en moneda extranjera | Cuenta en dólares, en pesos al tipo de cambio que corresponda (`niif/07-moneda-extranjera.md`). |
| 1110 | Clientes | Facturas emitidas no cobradas. |
| 1111 | Estimación de deudores incobrables (resta) | Lo que probablemente no se cobrará (`niif/03-instrumentos-financieros.md`). |
| 1115 | Plataformas de pago por cobrar | Ventas con tarjeta o pasarela aún no depositadas. |
| 1120 | IVA crédito fiscal | IVA de facturas de compra del giro, que se descuenta en el F29 (`tributario/04-iva.md`). |
| 1121 | Remanente de crédito fiscal | IVA crédito que sobró de un mes y pasa al siguiente. |
| 1125 | PPM por recuperar | Pagos provisionales mensuales hechos en el año; se descuentan en el F22 (`tributario/03-ppm.md`). |
| 1126 | Impuestos por recuperar | Otros créditos contra el impuesto a la renta. |
| 1130 | Anticipos a proveedores | Pagos antes de recibir la factura o el bien. |
| 1135 | Gastos pagados por anticipado | Un seguro o una suscripción anual: se reparte mes a mes. |
| 1140 | Préstamos a socios o relacionados | Plata que la empresa le prestó a un dueño o a otra empresa del dueño (`tributario/09-prestamos-timbres.md`; ojo con el retiro encubierto). |
| 1150 | Existencias | Mercadería para vender, si la hay. |
| 1210 | Maquinaria y equipos | Bienes de uso que duran más de un año (`niif/04-activo-fijo-deterioro-arrendamientos.md`). |
| 1211 | Vehículos | |
| 1212 | Muebles y equipos de oficina | |
| 1213 | Equipos computacionales | |
| 1219 | Depreciación acumulada (resta) | Lo ya gastado de los bienes de uso. |
| 1230 | Intangibles | Software o licencias de varios años, marcas compradas. |
| 1240 | Activo por impuesto diferido | Solo si la empresa aplica la Sección 29 (`niif/08-impuesto-ganancias.md`). |

### 2. Pasivo (lo que la empresa debe)

| Código | Cuenta | Qué va aquí |
|---|---|---|
| 2101 | Proveedores | Facturas recibidas no pagadas. |
| 2102 | Honorarios por pagar | Boletas de honorarios recibidas no pagadas, por el líquido. |
| 2103 | Retención de honorarios por pagar | Lo retenido al pagar una boleta; se paga en el F29 del mes siguiente (`tributario/05-honorarios.md`). |
| 2104 | Tarjetas de crédito por pagar | Lo cargado a la tarjeta de la empresa, hasta pagarla. |
| 2110 | IVA débito fiscal | IVA de las ventas; se paga en el F29. |
| 2111 | IVA por pagar | Lo que resulta del F29 hasta pagarlo, si la aplicación lo separa. |
| 2112 | PPM por pagar | El PPM del mes hasta pagarlo con el F29. |
| 2115 | Impuesto a la renta por pagar | El impuesto de primera categoría del año, al cierre. |
| 2120 | Anticipos de clientes (ingresos diferidos) | Lo cobrado antes de entregar el bien o prestar el servicio (`niif/05-ingresos.md`). |
| 2130 | Préstamos bancarios | Créditos del banco; la parte de largo plazo, si se presenta aparte. |
| 2140 | Préstamos de socios o relacionados | Plata que un dueño u otra empresa le prestó a la empresa. |
| 2150 | Dividendos o retiros por pagar | Lo acordado repartir y aún no pagado. |
| 2160 | Provisiones | Obligaciones de monto o fecha incierta (`niif/06-provisiones-hechos-posteriores.md`). |
| 2170 | Pasivo por impuesto diferido | Solo si aplica la Sección 29. |

### 3. Patrimonio (lo que es de los dueños)

| Código | Cuenta | Qué va aquí |
|---|---|---|
| 3101 | Capital pagado | Lo que los socios aportaron (`niif/09-patrimonio.md`). |
| 3102 | Capital suscrito por pagar (resta) | Lo que los socios se comprometieron a aportar y aún no pagan. |
| 3110 | Utilidades acumuladas | Resultados de años anteriores no repartidos. |
| 3111 | Pérdidas acumuladas (resta) | |
| 3120 | Resultado del ejercicio | Ganancia o pérdida del año, al cierre. |
| 3130 | Retiros o dividendos provisorios (resta) | Lo repartido durante el año, a cuenta de utilidades. |

### 4. Ingresos

| Código | Cuenta | Qué va aquí |
|---|---|---|
| 4101 | Ventas de bienes | Neto, sin IVA. |
| 4102 | Ingresos por servicios | Neto, sin IVA. |
| 4103 | Ventas exentas | Si la empresa vende afecto y exento, separarlas ayuda a la proporcionalidad del IVA. |
| 4110 | Otros ingresos | |
| 4120 | Ingresos financieros | Intereses ganados. |
| 4130 | Diferencias de cambio y reajustes | Ganancias por dólar o UF. |

### 5. Costos y gastos

| Código | Cuenta | Qué va aquí |
|---|---|---|
| 5101 | Costo de ventas | Lo que costó la mercadería vendida. |
| 5110 | Honorarios | Boletas de honorarios recibidas, por el bruto. |
| 5111 | Asesorías y servicios profesionales | Facturas de servicios de empresas (contador, abogado). |
| 5120 | Arriendos | Oficina, bodega, equipos arrendados. |
| 5121 | Servicios básicos | Luz, agua, gas. |
| 5122 | Telefonía e internet | |
| 5123 | Software y suscripciones | Servicios mensuales; los de varios años con pago único pueden ser intangible o gasto anticipado. |
| 5124 | Publicidad y marketing | |
| 5125 | Comisiones bancarias y de medios de pago | |
| 5126 | Materiales y gastos de oficina | |
| 5127 | Combustible, mantención y peajes | Ojo con el IVA de los vehículos: no siempre da crédito (`tributario/04-iva.md`). |
| 5128 | Seguros | |
| 5130 | Patente municipal y contribuciones | (`tributario/10-patente-conservacion.md`) |
| 5131 | Impuesto de timbres y otros impuestos | |
| 5140 | Depreciación | El gasto del año de los bienes de uso. |
| 5141 | Deudores incobrables | |
| 5150 | Gastos financieros | Intereses de préstamos y de tarjetas. |
| 5151 | Diferencias de cambio y reajustes | Pérdidas por dólar o UF. |
| 5160 | Multas e intereses fiscales | Se registran como gasto en el libro, pero tributariamente no se rebajan (gasto rechazado). |
| 5190 | Gastos no aceptados tributariamente | Lo que no cumple los requisitos de gasto de la ley (art. 31 de la LIR, `tributario/07-f22-empresa.md`): se registra, pero se agrega al calcular el impuesto. |
| 5201 | Impuesto a la renta | El gasto por impuesto del año, al cierre. |

## Cómo traducir al plan del usuario

1. Pide que exporte su plan de cuentas (`ver-la-realidad.md`) o que muestre la pantalla donde se ve.
2. Para cada cuenta de este modelo que la empresa use, anota en `mapa-de-mi-app.md` el código y el nombre equivalente del usuario.
3. Si el usuario no tiene una cuenta que haga falta (por ejemplo, retención de honorarios por pagar), recomiéndale crearla y explícale por qué, en vez de mezclarla con otra.
4. Si el usuario usa una cuenta para dos cosas distintas que conviene separar (gastos personales del dueño mezclados con gastos de la empresa), dilo: es de los errores más caros.

## Principios que no cambian con el plan

- **Una cuenta, una cosa.** Mezclar conceptos impide cuadrar y declarar bien.
- **Lo del dueño no es de la empresa.** Un gasto personal pagado con la empresa no es gasto de la empresa: es un retiro o un préstamo al socio, y tributa como tal.
- **El IVA no es ingreso ni gasto** cuando se recupera: va a IVA débito o crédito. Solo es gasto el IVA que no se puede recuperar.
- **Cada banco se cuadra con su cartola** cada mes (`04-auditoria.md`).
