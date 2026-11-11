# Listas de revisión

Revisado: 2026-11-11

Se usan como lista, no como inspiración. Cada ítem se comprueba con lo que nombra: una consulta (las de `04-auditoria.md` §4), una pantalla del sistema, un `ruta:línea` o una referencia de este skill. Si no aplica, se dice por qué. Cada respuesta lleva el nivel de certeza de `SKILL.md`; un ítem que queda **sin verificar** no se usa para registrar, declarar ni cerrar.

**Bloqueante** es lo que cambia una cifra que se declara o se presenta, rompe una regla del sistema o una norma, o falla un test; es la severidad **alta** de `04-auditoria.md` §6. Un ítem que no se pudo comprobar y del que depende una cifra que se declara es bloqueante.

Si el proyecto tiene reglas propias de ingeniería (cómo se escriben los asientos, qué validaciones corren), mandan sobre esta lista en lo que toca a cómo se escribe: se apuntan, no se copian. Si difieren, manda la regla y se corrige la lista.

Un chequeo automático del sistema que escribe archivos o manda avisos no es una consulta de solo lectura: se corre donde está pensado para correr, y en una copia se mira lo mismo con las consultas de `04-auditoria.md` §4.

## 1. Antes de afirmar una cifra, un saldo o un estado

- [ ] La cifra sale de una consulta a una copia propia en solo lectura (`01-metodo.md` §2), y se dice de qué día es la copia. No sale de notas de contexto, de un plan ni de la conversación (error 1).
- [ ] La consulta quedó anotada: empresa, filtro, fecha y resultado.
- [ ] Sé de qué empresa y de qué régimen es el dato, para ese año (`tributario/01-regimenes.md` §4).
- [ ] Digo el número del comprobante y, si importa, la clave interna (`01-metodo.md` §3).
- [ ] El saldo se deriva de sus líneas o partidas, no de una pantalla.
- [ ] Si hay una diferencia, sé si es de fecha, de signo, de moneda, de redondeo o de un registro que falta, y lo digo.
- [ ] Cada afirmación lleva su nivel de certeza; lo que depende del usuario o de un contador está marcado así.

## 2. Antes de registrar

- [ ] Uso la pantalla o el flujo que corresponde a la operación, no un asiento manual en el diario.
- [ ] Empresa correcta y activa.
- [ ] Leí el documento fuente: RUT, folio, fecha, neto, exento, IVA, total. No la cotización ni el resumen de la conversación (error 5).
- [ ] La fecha es la del hecho o la del documento, y el período está abierto. Si el mes del documento está cerrado, sé qué fecha le pone el sistema y si eso calza con la norma.
- [ ] Si el medio es una transferencia, sé de quién salió la plata y por cuenta de quién. El prestamista es el dueño del dinero, no quien transfirió (error 5). Si no está en un documento, lo pregunto (error 6).
- [ ] La cuenta es la que corresponde al hecho (`niif/` o `tributario/` del tema) y la elijo yo, no la sugerencia del sistema.
- [ ] Busqué si ya está registrado por otro camino: la consulta de duplicados entre registros de `04-auditoria.md` §4 y la búsqueda por RUT, monto y fecha (error 3).
- [ ] Si mueve una cuenta de control (clientes, proveedores, honorarios por pagar, préstamos, reembolsos), su detalle por contraparte va en el mismo registro.
- [ ] Si hay caja depositada junto con una transferencia, cada una va por su monto y se concilia (error 4).
- [ ] Si hay UF: la del día exacto del hecho, de la fuente oficial, guardada con el registro (error 2).
- [ ] Si hay dólares: la tasa de `niif/07-moneda-extranjera.md` §2. En un movimiento que no es una conversión no se reemplaza el tipo de cambio contable por uno pactado (errores 13 y 14).
- [ ] La glosa dice qué pasó, a quién y con qué documento (error 18).
- [ ] Sé cómo se anula si está mal y qué arrastra (partidas, F29, conciliación).

## 3. Antes de anular o revertir

- [ ] Sé qué hecho se corrige y qué registro lo reemplaza; el motivo lo nombra (error 19).
- [ ] Anulo desde el registro que lo creó, no desde el diario.
- [ ] Sé qué fecha le pone el sistema al reverso y si calza con la norma, que depende del caso (error del mismo año, de un año todavía sin estados autorizados o de uno ya autorizado): `niif/02-politicas-estimaciones-errores.md` §4. Con estados ya autorizados, no se reversa: va como ajuste de ejercicios anteriores. Si el caso no calza con lo que hace el sistema, se emite la advertencia.
- [ ] Si el mes tiene F29 declarado: un error del documento lo corrige el emisor con una nota; uno de registro se anula como error de registro y el mes queda por rectificar (`tributario/04-iva.md` §5).
- [ ] Si tiene pagos, notas o aplicaciones, sé qué rechaza el sistema y en qué orden se anula.
- [ ] Después, la cuenta de control sigue cuadrando (consultas de `04-auditoria.md` §4) y la conciliación bancaria se vuelve a parear o se explica.

## 4. Antes de una escritura masiva, un script o una migración

- [ ] Sigo `01-metodo.md` §6 paso por paso: copia previa con verificación de integridad, ensayo en una copia, transacción, verificación antes y después, reversión, instrucción del usuario para la base real.
- [ ] Sé si es un script versionado o uno de una vez (`01-metodo.md` §6), y lo trato como tal. Idempotente no es sin escritura: uno que escribe al correrlo y no tiene ensayo se corre primero en una copia.
- [ ] Sé cuántas filas se escriben y cuáles.
- [ ] La escritura va por el servicio que gobierna la tabla; si el servicio la rechaza, paro (error 17).
- [ ] Si toca un archivo, lo leo primero y escribo a un temporal (error 16).

## 5. Antes de proponer un plan

- [ ] Leí las funciones, rutas y tablas que toca y las cito con `ruta:línea` (error 15).
- [ ] Medí los datos en una copia.
- [ ] Cada afirmación tiene su nivel de certeza; lo que requiere decisión no se ejecuta.
- [ ] Están las alternativas con su efecto y su costo, no solo la recomendada.
- [ ] Dice qué no cambia, qué queda fuera, cómo se verifica y cómo se revierte.
- [ ] No depende de que el usuario recuerde un paso: dice dónde se hace y hasta cuándo.
- [ ] Lo revisa otro con la lista del §6.

Ficha de decisión, para una estructura legal o un cambio de criterio (error 7):

```
Hecho y empresa(s):
Dueño de la decisión (el usuario, contador, abogado):
Alternativas, con el efecto en cada empresa y en los terceros:
Decisión y fecha:
Dónde quedó (acta, correo, registro de decisiones):
```

## 6. Revisión independiente

La hace alguien que no escribió el plan. Si hay subagentes, uno con contexto limpio, al que se le da el repositorio y esta lista, no las conclusiones del autor. Si no los hay, una segunda pasada que vuelve a abrir cada fuente y cada consulta sin reutilizar lo concluido. Máximo dos rondas: la primera encuentra, se corrige, la segunda confirma. **Si en la segunda aparece un bloqueante, no se arregla y se cierra: se para y se le reporta al usuario.** Lo no bloqueante se anota como pendiente.

- [ ] Cada afirmación contra su fuente: consulta en la copia, `ruta:línea`, documento o norma con su punto.
- [ ] Montos y signos: debe y haber, IVA, retención, notas en negativo.
- [ ] Fecha, período y régimen del año.
- [ ] Doble conteo: caja, capital, gasto, documento, pago (consulta de duplicados de `04-auditoria.md` §4).
- [ ] Referencias: empresa, número y clave, partida, aplicación, documento, F29.
- [ ] Efectos en partidas, F29, reportes, notas, flujo y patrimonio.
- [ ] Lo que era del usuario, del contador o del abogado: ¿se preguntó?
- [ ] ¿Qué haría falsa la hipótesis? ¿Se corrió la prueba de control?
- [ ] ¿Hay una interpretación presentada como regla, o una norma citada sin haberla leído?

## 7. Cierre mensual

- [ ] Banco conciliado contra la cartola; lo que no parea, explicado.
- [ ] Documentos del mes en el libro IVA por su período tributario; el Registro de Compras y Ventas (RCV) del SII del mes comparado.
- [ ] Boletas de honorarios del informe del SII registradas, con su mes de retención (`tributario/05-honorarios.md` §4).
- [ ] Gastos recurrentes del mes confirmados o descartados.
- [ ] Gastos y servicios del mes sin factura todavía, según contratos y obligaciones conocidas: se nombran (`niif/01-conceptos-presentacion.md` §1).
- [ ] Depreciación del mes calculada, con vidas útiles copiadas de la tabla del SII con su fuente (error 9).
- [ ] Diferencia de cambio de las cuentas en moneda extranjera (`niif/07-moneda-extranjera.md` §4).
- [ ] Intereses de préstamos del mes devengados, si alguno lleva tasa.
- [ ] Cuentas de control (clientes, proveedores, honorarios por pagar, préstamos de socios y relacionadas, intereses por pagar, anticipos) cuadran con su detalle por contraparte; reembolsos por pagar cuadra con las rendiciones pendientes. Consultas de `04-auditoria.md` §4.
- [ ] Retenciones por pagar cuadra con las boletas y el F29.
- [ ] Préstamos entre empresas del mismo grupo: el espejo en la otra empresa y el contrato de mutuo respaldándolo.
- [ ] Documentos del mes archivados y vinculados; los movimientos importantes, con respaldo.

## 8. F29

- [ ] Período tributario de cada documento, no su fecha.
- [ ] Códigos según las instrucciones vigentes (`tributario/06-f29.md`; error 11).
- [ ] Base del PPM según el régimen del año (`tributario/03-ppm.md` §3) y tasa del régimen, del año y del tramo (`tributario/02-tasas-ley-21850.md` §3 y §4; error 8 y el 20 de `05-errores.md`).
- [ ] Remanente del mes anterior y su reajuste en UTM (`tributario/04-iva.md` §6), con la cadena desde lo declarado en el SII.
- [ ] Notas de crédito dentro de su plazo (`tributario/04-iva.md` §5).
- [ ] Retenciones de honorarios y del préstamo solidario en sus códigos (`tributario/05-honorarios.md` §6).
- [ ] Lo calculado contra lo declarado en el SII, y las diferencias explicadas.
- [ ] Plazo y medio de pago (`calendario.md` §3); intereses y multas si va atrasado.
- [ ] Si se corrige un mes declarado: §3 de esta lista.

## 9. Cierre anual

- [ ] Los doce meses cerrados en orden.
- [ ] Ajustes NIIF del año: incobrables, deterioro, diferencia de cambio de diciembre, impuesto corriente y diferido (`niif/03-instrumentos-financieros.md` §5, `niif/08-impuesto-ganancias.md`).
- [ ] Errores de años anteriores por el camino de `niif/02-politicas-estimaciones-errores.md` §3.
- [ ] Hechos posteriores hasta la fecha de autorización (`niif/06-provisiones-hechos-posteriores.md` §3).
- [ ] Partes relacionadas en las notas (`niif/10-partes-relacionadas.md` §4).
- [ ] Qué edición de la NIIF rige el ejercicio (`niif/README.md`).
- [ ] Lo tributario del año: `tributario/07-f22-empresa.md` y `tributario/08-declaraciones-juradas.md`, con sus fechas en `calendario.md` §4.

## 10. F22 personal

- [ ] Lo calculado contra `tributario/11-f22-personal.md` §7, incluido lo que una hoja de cálculo propia no calcula (restitución del crédito, parámetros del año tributario).
- [ ] Parámetros del año tributario, cada uno con su fuente y confirmado; los que no, sin verificar (error 10).
- [ ] Certificados de las sociedades y de terceros reunidos.
- [ ] Comparación con la propuesta del SII; las diferencias, explicadas (`tributario/11-f22-personal.md` §8).
