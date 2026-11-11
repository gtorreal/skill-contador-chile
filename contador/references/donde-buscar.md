# Dónde buscar los valores que cambian

Revisado: 2026-11-11

Este archivo dice dónde se lee cada valor que cambia seguido (por día, por mes o por año). Las cifras que aparecen como ejemplo son las que se vieron al comprobar cada página, y sirven solo para reconocer la tabla: no se usan para calcular.

## Reglas

1. **Lo que cambia se busca al usarlo,** en la fuente oficial de abajo. No se toma de la memoria ni de un ejemplo de otra referencia.
2. **La respuesta dice de qué fecha es el valor** y de dónde salió («UTM de noviembre de 2026, tabla del SII, leída el 11-11-2026»).
3. **Si no se puede abrir la fuente,** se usa la alternativa; si tampoco abre, el plan B: se le pide al usuario que abra la página y pegue el valor o un pantallazo.
4. **Si no se pudo buscar y el usuario no lo pegó,** el valor queda **sin verificar**: se puede usar para explicar o estimar, diciéndolo, pero no para registrar ni declarar.
5. **Una tasa o un plazo de un año distinto al del hecho no sirve:** se busca el del año que corresponde (el del período del F29, el del año tributario del F22, el de la fecha de la operación).

## Índices diarios y mensuales

### UF diaria

- **Qué es:** unidad reajustable por inflación, con un valor por día. Se usa en contratos, préstamos, límites del régimen Pro Pyme y topes.
- **Dónde:** `https://www.sii.cl/valores_y_fechas/uf/ufAAAA.htm` (AAAA es el año). Abrió el 11-11-2026 con `uf2026.htm`.
- **Cómo se lee:** un bloque por mes con el día y su valor, y al final una tabla resumen con los días en filas y los meses en columnas. Ejemplo visto: 1-11-2026, $41.252,94.
- **Alternativa:** Banco Central, `https://si3.bcentral.cl/indicadoressiete/secure/IndicadoresDiarios.aspx` (abrió el 11-11-2026; muestra el valor del día, sin la fecha a la vista: confirmar la fecha con el usuario o con la tabla del SII).
- **Plan B:** pedir al usuario que abra la página del SII del año y pegue el valor del día que se necesita.

### UTM, UTA

- **Qué es:** la UTM es la unidad tributaria mensual, con un valor por mes; la UTA es la anual (doce UTM). Muchos topes, tramos y multas están en UTM o UTA.
- **Dónde:** `https://www.sii.cl/valores_y_fechas/utm/utmAAAA.htm`. Abrió el 11-11-2026 con `utm2026.htm`.
- **Cómo se lee:** una fila por mes con las columnas UTM, UTA, IPC y sus variaciones. Ejemplo visto: noviembre de 2026, UTM $72.440 y UTA $869.280. Para el F22, la UTA que se usa es la de diciembre del año comercial (ver la tabla de tramos del año, abajo, que ya viene en pesos).
- **Plan B:** pedir la fila del mes que se necesita.

### Dólar observado

- **Qué es:** el tipo de cambio oficial del día, que se usa para convertir a pesos una operación en dólares y para revalorizar saldos.
- **Dónde:** `https://www.sii.cl/valores_y_fechas/dolar/dolarAAAA.htm`. Abrió el 11-11-2026 con `dolar2026.htm`.
- **Cómo se lee:** un bloque por mes, con el día y el valor, y el promedio del mes al final; los días sin publicación quedan en blanco (fines de semana y feriados). El valor de un día se calcula con las transacciones del día hábil anterior.
- **Alternativa:** la misma página del Banco Central de la UF.
- **Plan B:** pedir el valor del día y del mes que se necesita.

## Tasas y tramos de impuestos

### Retención de las boletas de honorarios

- **Qué es:** el porcentaje que retiene quien paga una boleta de honorarios. Sube cada año por ley hasta 2028.
- **Dónde:** `https://www.sii.cl/destacados/boletas_honorarios/`. Abrió el 11-11-2026; trae la tabla por año (2025, 14,5 %; 2026, 15,25 %; 2027, 16 %; 2028, 17 %).
- **Cómo se lee:** la tasa que vale es la del año en que se **paga** la boleta (`tributario/05-honorarios.md`).
- **Respaldo legal:** Ley 21.133 y art. 74 N°2 de la LIR, en LeyChile (ver «Leyes», abajo).
- **Plan B:** pedir al usuario que mire la tasa que aplica el formulario de boletas del SII cuando registra una.

### Impuesto de primera categoría, por régimen y año

- **Qué es:** el impuesto anual de la empresa. Su tasa cambia por régimen (14 A, 14 D N°3) y por año, y hoy hay tasas transitorias de dos leyes (Ley 21.755 y Ley 21.850).
- **Dónde:** la tasa permanente está en el art. 20 de la LIR; las transitorias, en los artículos transitorios de cada ley modificatoria. Se leen en LeyChile (abajo) y en la circular del SII que instruye cada ley (índice de circulares, abajo). El estado leído el 3-11-2026 está en `tributario/02-tasas-ley-21850.md`.
- **Cómo se lee:** se busca la tasa del **año comercial** que se declara, no la del año en que se presenta el F22. Ojo: LeyChile puede mostrar el texto con un cambio que todavía no rige; la vigencia sale de los artículos transitorios de la ley modificatoria (`fuentes-leyes-sii.md`, «Ojo 1»).
- **Plan B:** pedir al usuario la tasa que muestra la propuesta o el formulario del F22 del año en el SII.

### PPM (pagos provisionales mensuales)

- **Qué es:** el anticipo mensual del impuesto anual que se paga en el F29.
- **Dónde:** art. 84 de la LIR (14 A) y art. 14 letra D N°3 literal (k) (Pro Pyme), más los transitorios de las leyes que los cambian, en LeyChile; y la circular del año. El estado al 3-11-2026 está en `tributario/02-tasas-ley-21850.md` §4 y `tributario/03-ppm.md`.
- **Cómo se lee:** la tasa es la del **mes** del F29 (el período, no el mes en que se presenta). En el 14 A la tasa propia de cada empresa sale de su último F22; en el Pro Pyme depende de los ingresos del año anterior.
- **Plan B:** pedir al usuario la tasa que propone el F29 del SII para ese período.

### Impuesto global complementario (personas)

- **Qué es:** el impuesto anual de la persona dueña, por tramos.
- **Dónde:** la página de datos de la Operación Renta del año tributario: `https://www.sii.cl/valores_y_fechas/renta/AAAA/personas_naturales.html`. Abrió el 11-11-2026 con 2026 (año tributario 2026, rentas de 2025).
- **Cómo se lee:** la tabla del art. 52 trae los tramos ya en pesos, con el factor y la cantidad a rebajar: impuesto = renta × factor − cantidad a rebajar. La misma página trae los topes del año en pesos: exento de 13,5 UTA, gastos presuntos de honorarios (15 UTA), ahorro previsional voluntario, crédito por educación, intereses hipotecarios y otros.
- **Respaldo legal:** LIR, art. 52, con los tramos en UTA (`tributario/11-f22-personal.md`).
- **Plan B:** pedir al usuario la tabla de su propuesta de F22 o la de esa página.

### Impuesto único de segunda categoría (sueldo del dueño)

- **Qué es:** el impuesto mensual de un sueldo. Solo importa aquí si el dueño recibe un sueldo de su empresa o de otra; las remuneraciones están fuera del alcance del skill.
- **Dónde:** `https://www.sii.cl/valores_y_fechas/impuesto_2da_categoria/impuestoAAAA.htm`. Abrió el 11-11-2026 con 2026.
- **Cómo se lee:** un bloque por mes, con tablas mensual, quincenal, semanal y diaria; columnas desde, hasta, factor y cantidad a rebajar.

### Impuesto de timbres y estampillas

- **Qué es:** el impuesto de un mutuo, un pagaré o una letra.
- **Dónde:** DL 3.475, en LeyChile (idNorma 7137; ver «Leyes»). Las tasas están en la ley y cambian poco, pero el capital en UF o en dólares se convierte con el valor del día en que se firma (`tributario/09-prestamos-timbres.md`).
- **Plan B:** pedir al usuario la fecha de firma y el valor de la UF de ese día.

## Plazos

### F29 del mes

- **Dónde:** el calendario del SII, `https://misiir.sii.cl/cgi_calendario/calendario.cgi?OPT=3&VIEW=2&YEAR=AAAA&MONTH=MM&DAY=1&TYPE=F29`. Abrió el 11-11-2026 para noviembre de 2026. La página de índices del SII lo enlaza como `misii.sii.cl`; la dirección comprobada es la de `misiir`.
- **Cómo se lee:** trae un día para pago con PEC (mandato al banco), otro con PEL (pago en línea), los plazos de quienes cumplen requisitos de factura electrónica y el de los formularios sin movimiento. Ejemplo visto, noviembre de 2026: 11 (PEC), 12 (PEL), 19 y 20 (facturadores electrónicos que declaran y pagan por sii.cl), 28 (sin movimiento). Cómo se interpretan, incluido qué pasa si el día cae en feriado: `calendario.md`.
- **Plan B:** pedir al usuario el plazo que muestra el SII al entrar al F29 del período.

### F22 y declaraciones juradas del año tributario

- **Dónde:** la resolución del SII que fija cada año los plazos de las declaraciones juradas (para el año tributario 2027, la Res. Ex. SII N°135 del 2-10-2026), en el índice de resoluciones del año: `https://www.sii.cl/normativa_legislacion/resoluciones/AAAA/res_indAAAA.htm`; y las instrucciones del F22 del año: `https://www.sii.cl/servicios_online/renta/guia_trib_suplemento_AAAA.html`, con el anexo de multas y vencimientos `https://www.sii.cl/ayudas/ayudas_por_servicios/multas_ddjj_atAAAA.pdf`.
- **Cómo se lee:** el PDF de la resolución no se puede leer con WebFetch (llega como binario, comprobado el 11-11-2026); hay que descargarlo y leerlo con un lector de PDF, o pedirle al usuario el plazo de la declaración que le toca. Las fechas leídas para el año tributario 2027 están en `calendario.md` y `tributario/08-declaraciones-juradas.md`.
- **Plan B:** pedir al usuario el calendario de la Operación Renta que publica el SII en su portada entre febrero y abril.

## Otros valores

### Reajuste e interés por pagar atrasado

- **Qué es:** lo que se agrega a un impuesto pagado fuera de plazo: reajuste por IPC e interés penal (Código Tributario, art. 53).
- **Dónde:** la tasa de interés penal de cada semestre, en `https://www.sii.cl/valores_y_fechas/otros_valores/tasa_interes_penal_diario.html`; abrió el 11-11-2026. El reajuste, con la tabla de corrección monetaria del año, `https://www.sii.cl/valores_y_fechas/correccion_monetaria/correccionAAAA.htm` (abrió el 11-11-2026).
- **Cómo se lee:** la tabla del interés trae, por semestre, la tasa de interés corriente (A), la tasa penal anual (B = A + 3,5 %) y la tasa diaria (B / 360), que se multiplica por los días de atraso. Ejemplo visto, segundo semestre de 2026: tasa diaria 0,0213888889 %. La regla está en el art. 53 del Código Tributario, releído en LeyChile el 11-11-2026; el detalle, en `tributario/06-f29.md` §6. En la tabla de corrección monetaria, la fila es el mes desde el que se reajusta y la columna, el mes de pago; un reajuste negativo se toma como cero.
- **Plan B:** el SII calcula reajuste e intereses al presentar fuera de plazo; pedir al usuario el total que le muestra el formulario.

### Reajuste del impuesto anual a la renta (art. 72 LIR)

- **Dónde:** `https://www.sii.cl/valores_y_fechas/reajuste_declaracion_renta.html`. Abrió el 11-11-2026; trae el porcentaje por año tributario con la circular que lo fija (año tributario 2026: 1,2 %, Circular 13 de 2026).

### Tabla de vidas útiles del activo fijo

- **Qué es:** los años en que el SII acepta depreciar cada tipo de bien, normal y acelerada. Cambia poco.
- **Dónde:** `https://www.sii.cl/valores_y_fechas/tabla_vida_util_activo_inmovilizado.html`. Abrió el 11-11-2026.
- **Cómo se lee:** tres columnas: el bien (agrupado por sector), la vida útil normal y la depreciación acelerada, en años. La fija la Resolución N°43 de 2002, con lo que agregó la Resolución N°56 de 2021 (vehículos eléctricos e híbridos). En el Pro Pyme se deprecia de una vez el año de compra (`tributario/01-regimenes.md`); la vida financiera NIIF es otra estimación (`niif/04-activo-fijo-deterioro-arrendamientos.md`).

### Patente municipal

- **Qué es:** contribución anual a la municipalidad, entre el 2,5 y el 5 por mil del capital propio, con mínimo y máximo en UTM, según lo que fije cada municipalidad (`tributario/10-patente-conservacion.md`).
- **Dónde:** la tasa de cada comuna la fija su municipalidad; se mira en el sitio de esa municipalidad o en el aviso de cobro.
- **Plan B:** pedir al usuario el aviso de cobro de su patente.

### Índice de todos los valores del SII

`https://www.sii.cl/valores_y_fechas/index_valores_y_fechas.html` (abrió el 11-11-2026): enlaza la UF, el dólar, la UTM, los datos de la Operación Renta, el impuesto único, el reajuste de renta, la corrección monetaria, el calendario del F29, el interés penal y la tabla de vidas útiles. Si una dirección de este archivo deja de funcionar, se parte por ahí.

## Leyes y normas

- **Texto vigente de una ley:** LeyChile en XML, `https://www.leychile.cl/Consulta/obtxml?opt=7&idNorma=<id>`. La página `https://www.bcn.cl/leychile/navegar?idNorma=<id>` no trae el texto sin JavaScript. Abrió el 11-11-2026 con la LIR (idNorma 6368) y el Código Tributario (idNorma 6374); son textos largos que se leen por partes. Otros: DL 825 de IVA (idNorma 6369), DL 3.475 de timbres (idNorma 7137). Detalle en `fuentes-leyes-sii.md` §1.
- **Circulares del SII:** índice por año, `https://www.sii.cl/normativa_legislacion/circulares/AAAA/indcirAAAA.htm`; PDF, `circulares/AAAA/circuNN.pdf`.
- **Resoluciones del SII:** índice por año, `https://www.sii.cl/normativa_legislacion/resoluciones/AAAA/res_indAAAA.htm`.
- **Leyes nuevas:** Diario Oficial, `https://www.diariooficial.interior.gob.cl/edicionelectronica/index.php?date=DD-MM-AAAA`.
- **Plan B:** si una ley no abre, pedir al usuario el artículo desde LeyChile en su navegador, o decir que el punto queda sin verificar.
