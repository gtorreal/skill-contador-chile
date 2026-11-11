# La ficha de la empresa

Revisado: 2026-11-11

Casi toda respuesta contable depende de quién es la empresa: su régimen, si cobra IVA, cómo lleva la contabilidad, quiénes son los dueños y qué ya declaró. Estas son las preguntas para conocerla. Las respuestas se guardan en `ficha-empresa.md`, en la carpeta del usuario (nunca en este skill).

## Cómo hacer la entrevista

- **De a pocas.** Tres o cuatro preguntas por mensaje, empezando por el bloque 1. Si el usuario vino con una duda concreta, primero las preguntas que esa duda necesita, la respuesta, y después el resto de la ficha.
- **En simple.** Cada pregunta va como está escrita abajo, no con el término técnico. Si el usuario no sabe, se le dice dónde mirar (columna «Dónde mirar») y se sigue; la respuesta queda como «no sabe» hasta averiguarla.
- **Por qué importa.** Si el usuario pregunta para qué, se le explica con la columna «Para qué».
- **Con lo que muestre.** Si el usuario puede mostrar su situación tributaria del SII o su carpeta tributaria (`ver-la-realidad.md`), muchas respuestas salen de ahí: se leen, se confirman con él y no se preguntan de nuevo.
- **Sin pedir de más.** No se piden contraseñas, claves ni números de tarjeta. El RUT de la empresa solo si el usuario lo quiere anotar; no hace falta para responder.

## Las preguntas

### 1. Quién es la empresa

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿Qué es tu empresa: una sociedad (SpA, limitada, anónima), una EIRL o tú como persona con inicio de actividades? | La escritura o el certificado de constitución; la situación tributaria del SII. | Cambia quién paga qué impuesto, cómo se retira la plata y qué formularios hay. |
| ¿Desde cuándo tiene inicio de actividades en el SII? | Situación tributaria del SII. | Un primer año tiene reglas propias (PPM, primer F22, capital inicial). |
| ¿A qué se dedica? ¿Vende bienes, presta servicios o las dos cosas? | Las actividades económicas registradas en el SII. | Define si hay inventario, qué lleva IVA y qué cuentas se usan. |

### 2. Régimen tributario

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿En qué régimen está: Pro Pyme General (14 D N°3), Pro Pyme Transparente (14 D N°8) o el general (14 A)? | Situación tributaria del SII; si no aparece claro, el contador o el último F22. | Es lo que más cambia las respuestas: cuándo un ingreso o un gasto cuenta para el impuesto, la tasa, el PPM y quién paga el impuesto final (`tributario/01-regimenes.md`). |
| ¿Cuánto vende al año, más o menos? | Los F29 del año o el registro de ventas. | El límite para ser Pyme y el tramo de algunos beneficios. |
| ¿Lleva contabilidad completa (libro diario, mayor y balance) o simplificada? | El contador o la aplicación que usa. | Define qué registros y estados se esperan al cierre. |

### 3. IVA y documentos

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿Lo que vendes lleva IVA (facturas o boletas afectas), está exento, o hay de las dos cosas? | El registro de ventas del SII o las facturas emitidas. | Si hay de las dos, el IVA de las compras se recupera en proporción (`tributario/04-iva.md`). |
| ¿Qué documentos emites: facturas, boletas, boletas de honorarios, facturas de exportación? | El registro de ventas; el sitio de boletas de honorarios del SII. | Qué va en el F29 y en qué código. |
| ¿Recibes boletas de honorarios de personas que te prestan servicios? ¿Les retienes el impuesto? | El registro de boletas de honorarios recibidas del SII. | La empresa que recibe una boleta de honorarios suele tener que retener y pagar esa retención en el F29 (`tributario/05-honorarios.md`). |
| ¿Vendes o compras al extranjero? | Facturas de exportación; pagos al exterior en la cartola. | Exportaciones, servicios del exterior y moneda extranjera tienen reglas propias. |

### 4. Dueños y plata

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿Quiénes son los dueños y con qué porcentaje? ¿Alguno es otra empresa? | La escritura; el registro de accionistas. | Partes relacionadas, quién recibe los retiros y cómo tributan (`niif/10-partes-relacionadas.md`). |
| ¿El capital ya está pagado completo? | La escritura y la cartola del banco. | Lo suscrito y no pagado se registra distinto (`niif/09-patrimonio.md`). |
| ¿Cómo saca plata el dueño: sueldo, retiros o dividendos, préstamos, o paga cosas personales con la cuenta de la empresa? | La cartola de la empresa. | Cada forma tributa distinto; pagar gastos personales con la empresa es de los errores más caros. |
| ¿Algún socio le prestó plata a la empresa, o la empresa a un socio? ¿Hay contrato? | La cartola; los contratos. | Préstamos de socios y el impuesto de timbres (`tributario/09-prestamos-timbres.md`). |

### 5. Trabajadores

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿Tiene trabajadores con contrato? | Las liquidaciones de sueldo; Previred. | Las remuneraciones están fuera del alcance de este skill: si los hay, esas preguntas van a un contador. |

### 6. Bancos, medios de pago y bienes

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿Qué cuentas bancarias tiene la empresa? ¿Alguna en dólares? ¿Tarjetas de crédito a nombre de la empresa? | La banca en línea. | Cada una es una cuenta contable que se cuadra con su cartola. |
| ¿Cobra por plataformas de pago (máquinas de tarjeta, pasarelas en línea)? | Los contratos y liquidaciones de esas plataformas. | Las comisiones son gasto y los depósitos llegan netos: hay que separarlos. |
| ¿Tiene bienes que use por años: vehículos, maquinaria, computadores, un local? ¿Los arrienda? | Las facturas de compra; los contratos de arriendo. | Son activo fijo que se deprecia, o arriendos que son gasto (`niif/04-activo-fijo-deterioro-arrendamientos.md`). |

### 7. Cómo lleva la contabilidad hoy

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿Dónde registra: una aplicación contable (¿cuál?), una planilla, o lo hace un contador? | — | Para recomendar en el lenguaje de su herramienta y saber quién registra. |
| ¿Puede exportar su plan de cuentas? | La aplicación contable (suele estar en configuración o maestros). | Para recomendar sus cuentas, no unas genéricas (`plan-de-cuentas-modelo.md`). |
| Si tiene contador, ¿qué hace él y qué hace usted? | — | Para no recomendar algo que ya hace el contador, y saber a quién derivar. |

### 8. Qué ya está hecho

| Pregunta | Dónde mirar | Para qué |
|---|---|---|
| ¿Declaras y pagas el F29 por internet en sii.cl? ¿Pagas en línea o con mandato al banco (PEC)? | Cómo pagaste el último F29. | El plazo del F29 cambia según cómo se declara y paga (`calendario.md`). |
| ¿Cuál es el último F29 presentado? ¿Hay alguno atrasado o sin pagar? | sii.cl, consulta de declaraciones (`ver-la-realidad.md`). | Lo atrasado tiene multas e intereses, y se resuelve antes que lo nuevo. |
| ¿Presentó el F22 del último año? ¿Y las declaraciones juradas? | sii.cl. | Qué quedó cerrado y desde dónde se parte. |
| ¿Tiene alguna notificación, deuda o giro del SII pendiente? | sii.cl, situación tributaria y avisos. | Si hay una notificación o fiscalización, va a un contador (SKILL.md, sección 6). |
| ¿Hay algo que le preocupe o que sienta que está desordenado? | — | Muchas veces es por donde conviene empezar. |

## Formato de `ficha-empresa.md`

```markdown
# Ficha de la empresa

Última actualización: aaaa-mm-dd

## Quién es
- Tipo:                      (SpA / limitada / anónima / EIRL / persona con inicio de actividades)
- Inicio de actividades:
- Actividad:                 (bienes / servicios / ambos; giro en palabras)

## Régimen
- Régimen tributario:        (14 D N°3 / 14 D N°8 / 14 A / no sabe)
- Ventas anuales aprox.:
- Contabilidad:              (completa / simplificada / no sabe)

## IVA y documentos
- Ventas:                    (afectas / exentas / ambas)
- Documentos que emite:
- Boletas de honorarios recibidas:   (sí, retiene / sí, no retiene / no)
- Extranjero:

## Dueños y plata
- Dueños y porcentajes:      (sin RUT si el usuario no quiere)
- Capital pagado:            (completo / parte pendiente)
- Cómo saca plata el dueño:
- Préstamos con socios:

## Trabajadores
- Con contrato:              (sí / no)

## Bancos, medios de pago y bienes
- Cuentas y tarjetas:
- Plataformas de pago:
- Bienes de uso y arriendos:

## Contabilidad hoy
- Dónde registra:            (aplicación y nombre / planilla / contador)
- Plan de cuentas:           (exportado en plan-de-cuentas.md / pendiente)
- Contador externo hace:

## Qué ya está hecho
- F29 por internet y forma de pago:
- Último F29 presentado:
- Último F22:
- Declaraciones juradas:
- Pendientes con el SII:

## Fuera de alcance o para el contador
- 

## Por averiguar
- 
```

Lo que el usuario no sabe va a «Por averiguar», con dónde mirarlo. Lo que excede el skill (remuneraciones, una fiscalización) va a «Fuera de alcance o para el contador».

## Mantenerla al día

- Cuando algo de lo que muestra el usuario contradice la ficha, se pregunta y se corrige, con la fecha.
- Al empezar el año (enero) y antes de la Operación Renta (marzo), se repasan el bloque 2 y el 8.
