# Auditoría

Revisado: 2026-11-11

El auditor no busca confirmar lo que le dicen: busca que las cifras se sostengan. Cuatro frentes, en este orden: cuadraturas, respaldo, corte e integridad de referencias. Después, materialidad y muestra. Todo sobre una copia propia de la base, abierta en solo lectura (`01-metodo.md` §2), y con la fecha de la copia en el informe.

Un chequeo automático del sistema que escribe archivos o manda avisos se corre donde está pensado para correr; sobre la copia se usan las consultas del §4.

## 1. Cuadraturas

Una diferencia no se ajusta sin explicar su causa: fecha, signo, moneda, un registro que falta o una suma mal hecha.

| Qué | Contra qué |
|---|---|
| Cada asiento | Debe igual a haber, sin tolerancia |
| Clientes, proveedores, honorarios por pagar, préstamos de socios y relacionadas, intereses por pagar, anticipos a proveedores y de clientes | La suma de su detalle por contraparte (las partidas abiertas) |
| Reembolsos por pagar (gastos que alguien pagó con su plata y rindió) | Las rendiciones pendientes (total menos lo que cubrió un fondo) |
| Intereses por pagar | Los intereses devengados y no pagados |
| Retenciones por pagar | Las boletas de honorarios y el F29 |
| Banco | La cartola |
| Libro IVA | El F29 calculado y lo declarado en el SII (`tributario/06-f29.md`) |
| Remanente de crédito fiscal | El F29 anterior, en UTM (`tributario/04-iva.md` §6) |
| Activo fijo | Costo, depreciación acumulada y deterioro contra el registro de bienes |
| Inversiones en otras sociedades | El costo declarado |
| Capital | Lo pagado según el registro de accionistas |
| Patrimonio | El estado de cambios en el patrimonio, al peso |
| Préstamos entre empresas del mismo grupo | El espejo en la otra empresa |

Una cuenta de control sin cuadratura automática (por ejemplo, fondos por rendir contra los fondos abiertos) se compara a mano, y se dice que esa comparación no está probada.

Si el sistema guarda su esquema en una herramienta de migraciones, compara el de la copia con el del código antes de confiar en una consulta.

## 2. Respaldo

- Cada movimiento importante tiene cartola o documento oficial; un documento que explica lo que la cartola no explica se guarda y se vincula al registro.
- Si el sistema guarda una huella (hash) de cada documento, se verifica.
- Un documento vinculado a un registro de otra empresa es un error de integridad (consulta 5).
- Lo que falta se nombra con dónde está y qué falta.
- Un gasto registrado no es por eso un gasto aceptado: `tributario/07-f22-empresa.md`.

## 3. Corte

- Último asiento del período y fecha de la cartola.
- Bienes o servicios recibidos sin factura, devengos, depreciación, diferencia de cambio e intereses del mes (`02-listas.md` §7).
- Hechos posteriores que cambian una cifra del cierre (`niif/06-provisiones-hechos-posteriores.md` §3).
- Un asiento con fecha de un mes cerrado no se cuela: consulta 1.

## 4. Integridad de referencias

- Todo reverso apunta a su original y ningún original tiene dos (consultas 2 y 3).
- El saldo de una partida es su monto menos todas sus aplicaciones, incluidos los reversos de aplicaciones, que llevan monto negativo (`01-metodo.md` §3).
- La bitácora no se edita ni se borra.
- No hay registros de una empresa en otra: toda consulta filtra por empresa.

### Consultas

Sobre una copia en solo lectura. El resultado esperado de todas es vacío. Cada una se prueba dos veces: tal cual, y con la condición invertida (la prueba de control), que tiene que dar filas; si la invertida tampoco da nada, la consulta no está probada y no sirve como evidencia. Si el esquema cambia, se vuelven a probar las dos.

| # | Qué busca | Control (condición invertida) |
|---|---|---|
| 1 | Asientos creados después del cierre de su período, que sigue cerrado | creados antes del cierre |
| 2 | Reversos que no apuntan a un asiento de la misma empresa | todos los reversos |
| 3 | Originales con más de un reverso | originales con al menos uno |
| 4 | Partidas cuyo asiento no existe | partidas cuyo asiento existe |
| 5 | Vínculos de documento a un registro de otra empresa | vínculos de la misma empresa |
| 6 | Documentos vigentes del libro IVA repetidos (empresa, libro, RUT, tipo y folio), sin los reversos ni los originales que ya tienen reverso | documentos con al menos una fila |
| 7 | Cuentas de control cuyo saldo del mayor no es la suma de sus partidas | las que sí cuadran |
| 8 | Reembolsos por pagar que no cuadran con las rendiciones pendientes | las que sí cuadran |
| 9 | Gastos o pagos registrados dos veces por caminos distintos | contando también lo anulado |

Notas para escribirlas:

- En la suma de debe y haber, `coalesce(debit, 0)`: una columna vacía hace nula toda la suma y la consulta no encuentra nada.
- La 7 incluye las cuentas de control aunque no tengan partidas: una cuenta con saldo y sin detalle es justamente lo que se busca.
- La 9 compara registros de distintos caminos (rendición, pago de una obligación, pago, libro IVA) de la misma empresa, a tres días o menos y con montos iguales o a menos de 2 % (un mismo gasto puede rendirse en dos partes, como un impuesto y su recargo). No compara los registros que nacen juntos: la rendición que crea un pago, la factura de una rendición, ni el pago que salda ese documento; sin esa exclusión da falsos positivos. Son candidatos: cada fila se revisa contra sus documentos antes de anular nada. Un duplicado con montos que difieren en más de 2 % o con más de tres días de distancia no aparece; para eso sigue la búsqueda por RUT y monto (`02-listas.md` §2).

## 5. Materialidad y muestra

- La materialidad se define antes de ajustar (`niif/01-conceptos-presentacion.md` §2). Lo inmaterial no se corrige a ciegas: se documenta.
- Se prueban los movimientos grandes, los de fin de mes, los de partes relacionadas, los que tocan cuentas de control y los que no tienen respaldo.
- Se prueba una muestra de los asientos manuales y de los que se anularon y rehicieron.

## 6. Formato del informe

```
Hallazgo:
Severidad: alta / media / baja
Certeza: verificado / criterio fundado / sin verificar / requiere decisión del usuario / requiere contador externo
Evidencia: consulta (copia y fecha), ruta:línea, documento o norma
Qué pasa:
Efecto: cifra, F29, estado financiero o riesgo
Recomendación:
Dueño: el usuario, contador, abogado o el agente
```

- **Alta** (bloqueante, `02-listas.md`): cambia una cifra que se declara o se presenta, rompe una cuadratura o una regla del sistema o una norma, deja un saldo sin respaldo, o falla un test.
- **Media:** puede cambiar una cifra o un estado, pero no se ha materializado.
- **Baja:** orden, documentación o mejora.

Un hallazgo sin evidencia es una opinión. Si no se pudo verificar, se dice y se nombra quién puede hacerlo.

## 7. Lo que se busca siempre

- Asientos que no pasaron por el servicio de su registro, o escrituras directas en las tablas de asientos, líneas, partidas o aplicaciones (error 17).
- Reversos con motivo genérico (error 19).
- Documentos sin respaldo, duplicados o vinculados a otra empresa.
- Cuentas de control que no cuadran (consultas 7 y 8).
- F29 sin cadena de remanente o con códigos de otro año.
- Préstamos en UF con la UF de otro día (error 2).
- Una cuenta en moneda extranjera a un tipo que no es el observado del día (error 14; `niif/07-moneda-extranjera.md` §3).
- Cifras de la documentación del proyecto que no calzan con la base (error 1).
- Un plan que afirma algo del código sin citar la función (error 15).
