# IVA: hecho gravado, exportación de servicios, crédito fiscal, notas y remanente

Revisado: 2026-11-05

Ley leída en LeyChile, DL 825, idNorma 6369, versión 2026-02-05, el **3-11-2026**, salvo que se diga otra cosa. Los códigos del F29 están en `06-f29.md`.

## 1. En simple

El IVA es un impuesto de 19 % que la sociedad cobra a sus clientes (débito fiscal) y paga a sus proveedores (crédito fiscal). Cada mes, en el F29, se resta lo pagado de lo cobrado: si da positivo se paga al SII; si da negativo, queda un saldo a favor (remanente) para el mes siguiente. El IVA no es ingreso ni gasto de la sociedad mientras se pueda recuperar: es plata que pasa por ella.

Tres preguntas deciden casi todo: ¿lo que vendo está gravado o exento? ¿lo que compré me da derecho a crédito? ¿en qué mes va?

## 2. Hecho gravado y tasa

- **Tasa:** 19 % sobre la base imponible (art. 14).
- **Servicio:** «la acción o prestación que una persona realiza para otra y por la cual percibe un interés, prima, comisión o cualquiera otra forma de remuneración». Si un servicio mezcla prestaciones afectas y exentas, cada una se grava o no por su naturaleza, valorándolas por separado (art. 2 N°2).
- **Arriendo de bienes muebles:** gravado: el arrendamiento o cualquier cesión temporal del uso de bienes corporales muebles (art. 8 letra g).
- **Cuándo nace (devengo):** en los servicios, en la fecha de emisión de la factura o boleta; si no se emitió o no correspondía, cuando la remuneración se percibe o se pone a disposición (art. 9 letra a).
- **Cuándo se factura un servicio:** en el mismo período tributario en que la remuneración se percibe o se pone a disposición (art. 55, inciso primero).

En simple: en un servicio, el IVA va al mes de la factura, y la factura va al mes en que se cobra. Un anticipo cobrado en noviembre por una excavación de enero se factura en noviembre y su IVA va al F29 de noviembre, aunque en el libro NIIF todavía no sea ingreso (`references/niif/05-ingresos.md`).

**Exenciones frecuentes en una Pyme** (art. 12 letra E): los ingresos de los arts. 42 y 48 de la LIR, incluidas las sociedades de profesionales del art. 42 N°2 (N°8); los intereses de operaciones de crédito (N°10); los servicios a personas sin domicilio ni residencia en Chile, si Aduanas los califica como exportación y se utilizan en el extranjero (N°16); los ingresos en moneda extranjera de empresas hoteleras y de arriendo de inmuebles amoblados registradas, por servicios a turistas extranjeros (N°17); las prestaciones de salud financiadas por Fonasa o isapres, hasta el arancel Fonasa (N°19). Las empresas navieras están liberadas solo por los ingresos del transporte de pasajeros (art. 13 N°3).

## 3. Servicios con maquinaria y exportación de servicios

Ley releída el 3-11-2026:

- **Un trabajo con maquinaria o su arriendo** (por ejemplo, una excavación con retroexcavadora, o arrendar la máquina): servicio gravado (art. 2 N°2) y, el arriendo de un bien mueble, también por el art. 8 letra g). Verificado en la ley.
- **Cliente extranjero:** exento solo si Aduanas califica el servicio como exportación y se utiliza en el extranjero (art. 12 E N°16). Un trabajo que se presta y se aprovecha en Chile se utiliza en Chile: criterio fundado. La exención del N°17 es solo para hoteleras y arriendo de inmuebles amoblados.

## 4. Crédito fiscal y proporcionalidad

- **Da derecho a crédito** el IVA de las facturas por compras o servicios destinados al activo realizable o fijo, o a gastos generales que digan relación con el giro (art. 23 N°1). Hay que acreditarlo con la factura registrada (art. 25).
- **No da crédito** lo que se destina a operaciones exentas o no gravadas, o que no guarda relación directa con la actividad (art. 23 N°2); tampoco los automóviles, station wagons y similares, ni su combustible, repuestos y mantención, salvo que sean el giro (art. 23 N°4).
- **Uso común:** si la compra sirve a operaciones gravadas y exentas, el crédito es proporcional «de acuerdo con las normas que establezca el Reglamento» (art. 23 N°3). El reglamento (art. 43) **no se leyó**; un criterio habitual es el factor acumulado de enero al mes, que conviene confirmar con el reglamento antes de usarlo.
- **Facturas que llegan tarde:** las notas de crédito y débito, las facturas y los comprobantes de importación que se reciben o registran con atraso, por un hecho no imputable al contribuyente, se pueden usar dentro de los dos períodos tributarios siguientes (art. 24, inciso tercero).

En simple: una sociedad de inversión sin operaciones gravadas no tiene crédito fiscal por sus compras; una que vende afecto y exento prorratea; una que solo vende afecto recupera todo el IVA de lo que es del giro.

## 5. Notas de crédito y de débito, y su plazo

- **Se emiten** notas de crédito por descuentos o bonificaciones posteriores a la factura y por devoluciones o servicios resciliados; notas de débito por aumentos del impuesto facturado (art. 57).
- **Quien vende** rebaja de su débito el IVA de las bonificaciones y descuentos posteriores, y de lo restituido por bienes devueltos y servicios resciliados, **siempre que la devolución o la resciliación se haya producido dentro del plazo de seis meses** del inciso segundo del art. 70 (art. 21 N°1 y N°2). El art. 70 cuenta los seis meses entre la entrega y la devolución de las especies, salvo sentencia judicial.
- **Quien compra** rebaja de su crédito el IVA de las notas de crédito recibidas en el mismo período y suma el de las notas de débito recibidas (art. 24, incisos primero y segundo).

El plazo es de seis meses, no de tres. Qué pasa con una nota de crédito por un descuento (art. 21 N°1, que no menciona plazo) frente a una por devolución (N°2, seis meses) es criterio fundado: el plazo de seis meses solo está escrito para las devoluciones y resciliaciones.

Para un error en la factura o en el registro de un mes ya declarado: nota del emisor, o rectificación del F29.

## 6. Remanente y su reajuste

- Si el crédito supera al débito, la diferencia es remanente para el mes siguiente (código 77 del F29, `06-f29.md`).
- **Reajuste:** el remanente se puede reajustar convirtiéndolo a UTM según su valor a la fecha en que debió pagarse el tributo y reconvirtiéndolo a pesos con la UTM de la fecha en que se impute; la diferencia por no usar oportunamente ese reajuste «no podrá invocarse como crédito fiscal en períodos posteriores» (art. 27).

En simple: el saldo a favor se guarda en UTM para que no pierda valor; si un mes se olvida reajustarlo, ese reajuste se pierde.

El SII lo calcula con la UTM con dos decimales (Oficio SII 69/2001). Para la renta, el reajuste es ingreso (pregunta frecuente del SII, no releída).

## 7. Moneda extranjera

El documento se emite en pesos, al tipo de cambio del día (Circular SII 12/1991; no se releyó). Lo contable de la diferencia de cambio está en `references/niif/07-moneda-extranjera.md`.

## 8. Importar un bien (por ejemplo, una retroexcavadora)

DL 825 releído en LeyChile, idNorma 6369, versión 2026-02-05, el 3-11-2026, salvo que se diga otra cosa.

### En simple

Cuando una sociedad trae un bien del extranjero para quedarse con él en Chile (importación), en la Aduana paga dos cosas antes de sacarlo: los **derechos de aduana** (un arancel sobre el valor) y el **IVA de la importación**, 19 % sobre el valor más esos derechos. Los derechos son costo del bien: no se recuperan. El IVA, si el bien es para un giro afecto, **sí se recupera**: es crédito fiscal del F29 del mes en que se tramitó la importación. Se paga igual en la Aduana, aunque después se recupere. Si el bien entra solo de paso (admisión temporal), no paga IVA, pero tampoco queda importado.

### Criterio y fuente

- **Hecho gravado:** las importaciones pagan IVA, «sea que tengan o no el carácter de habituales» (art. 8 letra a). El sujeto es el importador, habitual o no (art. 11 letra a). Una importación siempre está gravada, la haga quien la haga [Oficio SII 1983 del 6-8-2012, https://www.sii.cl/pagina/jurisprudencia/adminis/2012/ventas/ja1983.htm, leído 2026-11-03].
- **Cuándo nace:** «al momento de consumarse legalmente la importación o tramitarse totalmente la importación condicional», y la Aduana no deja retirar el bien sin que se pague (art. 9 letra b). Lo mismo dice el art. 64, inciso sobre las importaciones, y el art. 104 de la Ordenanza de Aduanas: el pago de derechos, impuestos y demás gravámenes es previo al retiro, salvo otra modalidad de pago [DFL 30 de 2004, Hacienda, LeyChile idNorma=238919 (versión 2026-10-17), leído 2026-11-03]. Importación, para la Ordenanza, es «la introducción legal de mercancía extranjera para su uso o consumo en el país» (art. 2 N°3, misma lectura).
- **Base:** el valor aduanero del bien o, en su defecto, el CIF, y «formarán parte de la base imponible los gravámenes aduaneros que se causen en la misma importación» (art. 16 letra a). O sea, el IVA va sobre el precio más los derechos.
- **Crédito fiscal:** el IVA «pagado por la importación de las especies al territorio nacional respecto del mismo período» da crédito si el bien va al activo fijo o realizable o a gastos del giro (art. 23 N°1). Se acredita con el comprobante de pago; no evita el desembolso en la Aduana (Oficio 1983/2012, ya citado). Solo la parte que es IVA es crédito: lo demás pagado en Tesorería son gravámenes aduaneros (Oficio SII 1675/2022, **sin verificar**: se encontró solo en vLex, no en sii.cl). Si el bien sirve también a operaciones exentas, el crédito es proporcional (art. 23 N°3, §4).
- **Derechos de aduana:** la tasa general es **6 %** del valor de las mercaderías importadas (Ley 18.687, art. 1, LeyChile idNorma=30069, versión 2013-09-28, leída 2026-11-03). Un tratado de libre comercio puede bajarla a cero según el país de **origen** del bien, con certificado de origen: qué tratado aplica y la partida del Arancel Aduanero se verifican en cada caso.
- **Impuesto adicional del art. 37:** no aplica a maquinaria como una retroexcavadora. La lista vigente (oro, joyas, pieles finas, alfombras finas, caviar, pirotecnia, armas de aire) no la trae (art. 37, leído 2026-11-03).
- **Admisión temporal:** las especies que se internan transitoriamente en admisión temporal u otra destinación aduanera semejante están exentas de IVA (art. 12 letra C N°2). La Ordenanza la grava con una tasa que sube con el plazo de permanencia, hasta el 100 % de los gravámenes de la importación sobre 120 días (art. 107). Una embarcación con bandera extranjera que entra a Chile y después se queda no está importada hasta que se tramita su importación.
- **Postergación:** una Pyme acogida a la postergación del IVA (art. 64, inciso tercero) y que cumpla el decreto puede retirar la mercancía sin pagar antes, con garantía, y pagar dentro de 60 días desde la legalización de la declaración (Ordenanza, art. 104, incisos segundo a cuarto). Entre los requisitos están 36 F29 presentados a tiempo: una sociedad recién creada casi seguro no califica.

### Cómo se registra

- **Hechos que hay que tener antes de registrar:** si el bien entró con su importación tramitada o en admisión temporal (o ya estaba en Chile con bandera extranjera); la declaración de ingreso (DIN) con el valor aduanero, los derechos y el IVA pagados, y su fecha; el país de origen y si hubo certificado de origen; quién figura como importador (tiene que ser la sociedad, con su RUT, para que el IVA sea crédito de ella).
- **El asiento** (criterio, con NIIF 17.10 en `references/niif/04-activo-fijo-deterioro-arrendamientos.md`): el precio pagado al vendedor (si se pagó antes, desde el anticipo a proveedores) más los derechos de aduana, el agente de aduanas y lo necesario para dejar el bien en condiciones de uso, al activo fijo; el IVA de la DIN, a IVA crédito fiscal, no al costo.
- **En el F29:** la DIN de un bien del activo fijo va en los códigos **536** (cantidad de DIN) y **553** (crédito fiscal), en el mes en que se tramitó (`06-f29.md` §3).

## 8 bis. El RUT genérico de un extranjero sin RUT (leído el 5-11-2026)

- **Qué es:** el SII usa **55.555.555-5** como RUT de un extranjero sin RUT chileno, por no tener domicilio ni residencia en Chile, cuando uno de *sus* formularios o documentos exige un RUT. No es un RUT del extranjero: es el valor que va en el campo. No confundir con 66.666.666-6, que es el de un chileno con domicilio en Chile cuyo RUT se desconoce.
- **Dónde lo pide el SII, con fuente:**
  - Declaraciones juradas: si el informado es un extranjero sin RUT, «su información debe ser declarada con el RUT 55.555.555-5», en líneas distintas si son varios (normas comunes de las DDJJ, §1.4, https://www.sii.cl/operaciones/intema1.html; la página es del AT2000, así que se contrasta con las instrucciones del formulario del año antes de usarla).
  - Documentos electrónicos a un receptor extranjero: factura con el RUT 55.555.555-5 «y adicionalmente el nombre o tax-id o número identificador del receptor extranjero» (Oficio SII 3190, de 25-11-2016, que aplica el criterio del Oficio 1145 de 2015; https://www.sii.cl/normativa_legislacion/jurisprudencia_administrativa/ley_impuesto_ventas/2016/ja3190.htm).
  - DTE de compra y venta de moneda extranjera: «En caso de receptores extranjeros sin número de Rut, se debe consignar el Rut: 55.555.555-5» y el número de identificación extranjero (Res. Ex. SII 66, de 02-08-2022, https://www.sii.cl/normativa_legislacion/resoluciones/2022/reso66.pdf).
  - Guía de ayuda de la factura de exportación: el mismo número para el receptor sin RUT (https://www.sii.cl/destacados/factura_electronica/guias_ayuda/registrar_factura_exportacion.htm, no abierta; la cita es del buscador).
- **Lo que no dice:** ninguna de estas fuentes regula el registro contable interno de un pago a un extranjero. Es un dato para los documentos y declaraciones que van al SII. Usarlo en la contabilidad no está prohibido, pero tampoco es exigido. **Criterio fundado.** Ojo en un sistema contable que lleve partidas por RUT: todos los extranjeros sin RUT compartirían la misma contraparte, y un anticipo a ese RUT quedaría esperando un documento chileno que el vendedor extranjero no emite. Para un anticipo a un proveedor extranjero suele ser más claro un asiento manual al anticipo a proveedores.

## 9. Lo que no se leyó y conviene leer antes de un caso real

- Para una importación (§8): la partida del Arancel Aduanero y el tratado que aplica por su origen; el Oficio 1675/2022 en sii.cl.
- El reglamento del DL 825 (art. 43, proporcionalidad).
- La ley que amplió el hecho gravado de los servicios al texto actual del art. 2 N°2 y su circular, con sus reglas de transición: **sin verificar** cuál es y desde cuándo rige.
