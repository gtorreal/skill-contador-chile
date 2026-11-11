# Método

Revisado: 2026-11-11

Cómo se verifica un dato antes de usarlo y cómo se escribe en la contabilidad sin romperla. Los niveles de certeza, cuándo se cita, cómo se investiga, cuándo se escala y cómo se le habla al usuario están en `SKILL.md`: no se repiten acá. Las listas para cada momento están en `02-listas.md`.

## 1. Qué fuente responde qué

| Pregunta | Responde | No responde |
|---|---|---|
| Un hecho de la empresa: una cifra, un saldo, una fecha, quién pagó | La base del sistema contable (una copia del día, §2) y el documento fuente: factura, boleta, cartola, mutuo, escritura | Notas de contexto, un plan, la conversación |
| Cómo opera el sistema contable | El código o la configuración que se ejecuta, citado con `ruta:línea` si hay código | El nombre de un archivo, una decisión de diseño vieja, lo que se recuerda del sistema |
| Qué es correcto contable o tributariamente | La norma leída (`SKILL.md`, "Qué manda"; `fuentes.md`) | El código, una regla interna o un valor de configuración |
| Qué ya se decidió | El registro de decisiones del usuario y las respuestas de su contador | Una cifra: se contrasta en la base |

Si la base y el documento discrepan, o la base y el sistema, se para y se dice: puede ser un registro mal hecho, un bug o una migración pendiente. No se elige la versión que parece más razonable.

## 2. La copia para cifras

Las cifras se sacan de una copia de la base, nunca de la base en uso.

1. **Una copia propia, con nombre propio.** No se reemplaza una copia que otro proceso o sesión está usando. Si en esta sesión ya hay una copia del día, se usa esa y no se trae otra.
2. **Fuera del control de versiones.** Una copia con datos reales dentro de un repositorio se puede commitear por error: va a un directorio temporal o a una ruta excluida expresamente.
3. **Abierta en solo lectura** (en SQLite, `sqlite3 -readonly <copia>`). Una pantalla del sistema levantada sobre la copia sí escribe en ella: para cifras se usa la consulta, no la pantalla.
4. **Con su fecha.** Toda cifra dice de qué copia y de qué día es.

## 3. Verificar cada tipo de dato

### Una cifra

- Sale de una consulta a la copia, con empresa, filtro, fecha y resultado anotados.
- Un saldo se deriva de sus líneas o de sus partidas, no se copia de una pantalla.
- Se distingue la clave interna de un registro del número de comprobante, y se dice cuál se cita. "Comprobante 60 (clave interna 138) de la empresa X" es una cita completa.
- Si la cifra es de otro día, se dice de qué día es.

### Un asiento

- Se lee su fecha, su número, su tipo, su glosa y si es o tiene un reverso. Vigente es el que no es reverso de otro y no tiene reverso.
- En una suma de debe y haber, una columna vacía se trata como cero; en SQL, `coalesce(debit, 0)`: sin eso, `debit - credit` da nulo y la consulta no encuentra nada.
- El sistema debe reconocer un asiento por su tipo, no por su glosa.

### Un documento

- Del documento se leen RUT, tipo, folio, fecha, neto, exento, IVA y total; no el nombre del archivo ni el resumen de la conversación.
- En el libro IVA, el período que manda es el período tributario del documento, no su fecha.
- El saldo de una partida abierta (una factura por cobrar o por pagar, un préstamo) es su monto menos **todas** sus aplicaciones, incluidas las anuladas, que se compensan con su reverso.
- Un movimiento importante tiene respaldo: la cartola o un documento oficial vinculado.

### El código del sistema

- Si el sistema contable tiene código, se lee la función que gobierna el caso y se cita `ruta:línea`; si la línea cambió, se actualiza la cita.
- Se mira qué rechaza el sistema. Si rechaza el caso, no se salta: se entiende por qué.
- Lo que el sistema hace se compara con la norma, no al revés (`SKILL.md`, "Advertencia").

### El régimen

Antes de afirmar cuándo se reconoce un efecto, se lee el régimen de la empresa para ese año (`tributario/01-regimenes.md` §4). No se aplica la lógica del 14 A a un 14 D (error 12 de `05-errores.md`).

### Un valor de configuración

Un valor de dominio (una tasa, un plazo, un tope) que no está confirmado contra su fuente oficial es una propuesta, no una regla: no se usa para una cifra que se entrega ni para afirmar un tratamiento. Contra qué fuente se confirma: `fuentes-leyes-sii.md` §6.

## 4. La ficha de una afirmación

Para toda afirmación que cambie una cifra, una decisión o un plan:

```
Afirmación:
Certeza: verificado / criterio fundado / sin verificar / requiere decisión del usuario / requiere contador externo
Fuente: consulta (copia y fecha), ruta:línea, documento o norma con su punto y fecha de lectura
Cálculo: (si hay)
Qué la cambiaría:
```

## 5. Un plan que toca la base o el código

1. **Leer antes de escribir** las funciones, rutas, tablas y tests que toca, con `ruta:línea`.
2. **Medir en una copia** cuántos registros, qué saldos, qué casos borde.
3. **Separar** lo verificado, lo fundado y lo que requiere decisión: lo último no se ejecuta.
4. **Alternativas**, la recomendada y las otras, con su efecto y su costo.
5. **Lista fija** (`02-listas.md` §5) y revisión independiente (`02-listas.md` §6): dos rondas, y si en la segunda aparece un bloqueante se para y se le reporta al usuario.
6. **Guion** si toca la base real: §6.

Un plan que cambia en cada revisión no está listo: le falta leer el código o la lista. Se para, se lee lo que falta y se vuelve a escribir (error 15).

## 6. Escribir en la base real

La operación normal pasa por las pantallas del sistema y sus validaciones. Esto es para una escritura masiva, un script, una migración o una corrección que no se hace desde una pantalla:

- copia previa de la base, con su verificación de integridad;
- ensayo en una copia;
- escritura dentro de una transacción;
- verificación antes y después;
- cómo se revierte;
- y la instrucción expresa del usuario para correrlo sobre la base real.

Dos clases de script, que no se confunden:

- **Los versionados del sistema**, que se declaran idempotentes: correrlos dos veces no cambia nada, pero idempotente no quiere decir que no escriban. Si tienen modo de ensayo, se mira el plan antes de aplicar; si no lo tienen, cada corrida sobre la base real es una escritura masiva y sigue la lista de arriba entera, empezando por correrlo en una copia.
- **Uno de una vez**, escrito para la tarea: no es idempotente salvo que se demuestre. Va por el servicio o la función que gobierna la tabla, nunca por SQL directo (error 17). Se prueba en la copia, se corre una sola vez, deja su rastro en la bitácora y se borra después. Si reescribe un archivo, lo lee primero y escribe a un temporal (error 16).

## 7. Documentación y cierre

- Toda cifra que se escriba en la documentación del proyecto lleva empresa, clave y número verificados; después de un reverso, se revisan las citas del asiento (error 1).
- Un cambio de estado o una decisión se guarda en el momento, en los archivos del proyecto.
- Antes de dar algo por terminado: qué quedó sin verificar, qué caminos no se cubrieron, qué se asumió sin fuente, y si la documentación quedó al día. Se reporta el resultado real, aunque falle.
