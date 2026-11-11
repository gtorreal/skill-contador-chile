# Regímenes tributarios: 14 A, 14 D N°3 y 14 D N°8

Revisado: 2026-11-03

Los valores, tasas y plazos de este archivo son los vigentes a la fecha que indica cada uno; antes de usarlos para registrar o declarar se confirman en la fuente (ver `donde-buscar.md`).

Qué régimen puede tener una sociedad, qué cambia en cómo se calcula su impuesto y cómo se sabe cuál tiene. Fuentes leídas el **3-11-2026**. Las tasas por año están en `02-tasas-ley-21850.md`; el PPM, en `03-ppm.md`; el impuesto diferido, en `references/niif/08-impuesto-ganancias.md`.

## 1. En simple

El régimen decide **cuándo** cuenta la sociedad sus ingresos y gastos para el impuesto, **con qué tasa** paga y **qué registros** lleva. Hay tres:

- **14 A, régimen general.** Para empresas grandes o que no cumplen los requisitos de Pyme. Cuenta lo devengado (lo facturado, se haya cobrado o no), aplica corrección monetaria, deprecia según la tabla del SII y paga la tasa general (27 % en 2026, baja a 23 % en 2029).
- **14 D N°3, Pro Pyme General.** Para Pymes. Cuenta solo lo **cobrado** y lo **pagado** (base de caja), deprecia de una vez el activo fijo el año en que lo compra, no hace corrección monetaria y paga una tasa rebajada (12,5 % de 2025 a 2027).
- **14 D N°8, Pro Pyme Transparente.** Para Pymes cuyos dueños son todos personas que pagan impuestos finales. La sociedad no paga impuesto de primera categoría: su resultado se le atribuye a los dueños, que lo declaran en su F22.

Los registros contables (el libro diario) se llevan igual con NIIF para las PYMES en cualquier régimen; lo que cambia es el ajuste para llegar al resultado tributario.

## 2. Requisitos del Pro Pyme (14 D N°1)

Las tres condiciones, todas a la vez [LIR, art. 14 D N°1, letras (a) a (c), LeyChile idNorma=6368 (versión 2026-10-17), leída 2026-11-03]:

- **(a) Capital efectivo al inicio** de actividades no mayor a 85.000 UF.
- **(b) Ingresos brutos del giro:** promedio de los tres ejercicios anteriores no mayor a 75.000 UF (se puede exceder una sola vez), y ningún ejercicio sobre 85.000 UF. Son ingresos del giro los de la actividad habitual, sin ganancias de capital ni ventas de activo fijo y sin IVA. **Al promedio se suman los ingresos de las empresas o entidades relacionadas, y también sus rentas de inversiones y de participaciones.** El párrafo completo dice: «Adicionalmente, para el cálculo del promedio de ingresos brutos se deberá sumar los ingresos brutos del giro percibidos o devengados por las empresas o entidades relacionadas, y además, sumar las rentas de dichas empresas o entidades relacionadas provenientes de la tenencia, rescate o enajenación de inversiones en capitales mobiliarios, de la enajenación de derechos sociales o acciones, y las rentas que las entidades relacionadas perciban con motivo de participaciones en otras empresas o entidades. Para efectos de este artículo, se considerarán empresas o entidades relacionadas según se establece en el artículo 8° número 17 del Código Tributario y los ingresos de las entidades relacionadas se sumarán, en su totalidad, en los casos de las letras a) y b) de dicho artículo; en tanto que, en los casos de las letras c), d) y e) del artículo referido se considerará la proporción que corresponda a la participación en el capital, utilidades, ingresos o derechos a votos, según resulte mayor.» [LIR, art. 14 D N°1 (b), penúltimo párrafo de la letra, LeyChile idNorma=6368 (versión 2026-10-17), leída 2026-11-03]. En simple: con control (más de 50 %, letras a y b) se suma todo; en los demás casos (más de 10 %, o entidades relacionadas con una misma persona natural), la mayor de las cuatro proporciones. **Verificado.** Qué participación se mide en el caso de la letra (e), donde las dos entidades no son dueñas una de la otra, el texto no lo dice; leerla como la participación de la persona natural común en la entidad relacionada es **criterio fundado**, y lo cambiaría una circular o un oficio que diga otra cosa.
- **(c) Rentas pasivas:** los ingresos por arriendos y otros de los N°1 y N°2 del art. 20 (intereses, dividendos), por participaciones en asociaciones, y por la tenencia de derechos sociales, acciones o cuotas de fondos, no pueden pasar del 35 % de los ingresos brutos del giro del año. Cuentan los frutos, no la venta de esos bienes.

El art. 8 N°17 del Código Tributario se leyó entero (LeyChile idNorma=6374, leído 2026-11-03): son relacionados el controlador y sus controladas (más de 50 %), las entidades bajo un mismo controlador, una entidad y quien tiene más del 10 % de ella, y las entidades relacionadas con una misma persona natural por tener esta más del 10 % de cada una, que se consideran relacionadas entre sí (letra e).

**14 D N°8, además:** que todos los propietarios sean contribuyentes de impuestos finales durante el ejercicio [LIR, art. 14 D N°8, encabezado, leída 2026-11-03]. Una sociedad dueña de acciones no lo es, así que una sociedad con un accionista que es sociedad no puede estar en el 14 D N°8.

**Cómo se entra:** quien inicia actividades cumpliendo los requisitos queda en el Pro Pyme «por el solo ministerio de la ley», sin declararlo, y el SII lo informa en el sitio personal; quien ya tenía actividades se cambia avisando entre el 1 de enero y el 30 de abril [LIR, art. 14 D N°5, leída 2026-11-03].

**Salida por rentas pasivas (releída el 3-11-2026).** El límite del 35 % se mide **cada año comercial** para mantenerse en el régimen, contra los ingresos brutos del giro **percibidos** en el año, y dentro de esos ingresos del giro no se cuentan las propias rentas pasivas; de las acciones solo cuentan los dividendos, no la venta ni el rescate [Circular SII 62/2020, punto 1.2.1.4, https://www.sii.cl/normativa_legislacion/circulares/2020/circu62.pdf, leída 2026-11-03]. Si se excede, la empresa «deberá abandonarlo obligatoriamente a contar del 1° de enero del año siguiente» (punto 1.2.2.2, misma lectura). La ley dice lo mismo: se avisa al SII entre el 1 de enero y el 30 de abril del año siguiente al incumplimiento, y la empresa queda en el 14 A desde el 1 de enero del año del aviso, reconociendo al pasar los ingresos devengados y gastos adeudados que no había computado [LIR, art. 14 D N°7, leída 2026-11-03]. La Ley 21.850 no modifica el art. 14 D N°1 ni el N°7 (se revisaron todas sus menciones a la letra D del art. 14 el 3-11-2026). **Confirmado.**

En simple, para una sociedad de inversión: si en un año los dividendos y demás rentas pasivas que cobra pasan del 35 % de sus ingresos del giro de ese año, al año siguiente queda en el régimen general, con tasa de 14 A y contabilidad de devengo. Con ingresos del giro en cero, **cualquier** dividendo hace pasar el límite. Antes de que una sociedad en que se invierte reparta, hay que ver con el contador si conviene y cómo; el hecho que importa es el monto, la fecha y los ingresos del giro de la sociedad receptora ese año.

## 3. Qué cambia en el resultado

| Tema | 14 A | 14 D N°3 | 14 D N°8 | Fuente (LIR, idNorma 6368, leída 2026-11-03) |
|---|---|---|---|---|
| Ingresos y gastos | Devengados o percibidos según las normas de la ley (art. 15; con contabilidad completa, lo devengado: sin releer los arts. 29 y 31) | Ingresos del giro **percibidos** y gastos **pagados**, salvo operaciones con relacionadas del 14 A, que van devengadas | Como el N°3, más todos los ingresos y egresos sin importar su fuente, y los dividendos incrementados por su crédito | Art. 14 D N°3 (f); art. 14 D N°8 (a)(iv) |
| Contabilidad | Completa | Completa, o simplificada si opta entre el 1 de enero y el 30 de abril; si lleva completa, ajusta al resultado del 14 D | Liberada de contabilidad completa, inventarios, balances y depreciación; registro de compras y ventas y libro de caja | Art. 14 D N°3, encabezado; N°8 (a)(ii) y (iii) |
| Corrección monetaria (art. 41) | Sí | Liberada | Liberada | Art. 14 D N°3 (c); N°8 (a)(ii) |
| Depreciación | Cuota anual según la vida útil del SII, o acelerada: «una vida útil equivalente a un tercio de la fijada por la Dirección», solo para bienes nuevos o internados con vida de tres años o más (art. 31 N°5). El tercio ya viene en años enteros en la columna «Depreciación acelerada» de la tabla del SII (80 años da 26; 7 da 2): se copia esa columna, no se divide | **Instantánea e íntegra** el año de la compra | No deprecia | Art. 31 N°5; art. 14 D N°3 (d) |
| Existencias e insumos | Costo al venderlos | Gasto el año en que se compran | Igual que el N°3 | Art. 14 D N°3 (e) |
| Venta de acciones o inversiones | Ingreso menos costo | Al percibir el precio se rebaja la inversión reajustada por IPC | Igual que el N°3 | Art. 14 D N°3 (f)(i) y (ii) |
| Dividendos de sociedades 14 A o 14 D N°3 | Ingreso, con crédito | **No forman parte de la base imponible** | Forman parte, incrementados por el crédito | Art. 14 D N°3 (f)(i); N°8 (a)(iv) |
| Impuesto de primera categoría | Tasa general | Tasa del Pro Pyme | Liberada | `02-tasas-ley-21850.md` |
| Registros de rentas empresariales (letras a) a d) del art. 14 A N°2; el RAI y el SAC los nombra la Circular 53/2025, notas 3 y 4) | Todos (el art. 14 A N°2 no se leyó entero) | Solo el SAC, salvo rentas exentas, ingresos no renta o rentas con tributación cumplida | Liberada | Art. 14 D N°3 (g) e (i); N°8 (a)(ii) |
| Retiros y dividendos a los dueños | Imputados según el orden del art. 14 A N°4 (citado por el art. 14 D N°3 (h); no se leyó) | Afectos a impuestos finales con crédito, sin orden de imputación si no hay REX | La base se atribuye a los dueños en el año | Art. 14 D N°3 (h); N°8 (b) |
| Capital propio tributario | El del art. 41 (sin leer; `07-f22-empresa.md` §5) | Simplificado: capital aportado más bases imponibles y participaciones, menos disminuciones, pérdidas, gastos rechazados pagados y retiros | — | Art. 14 D N°3 (j) |
| Reajustes de UF y diferencias de cambio | Corrección monetaria | No se reconocen hasta percibirlos o pagarlos | — | Oficio SII 665/2022, abajo |

**Reajustes y diferencias de cambio en el 14 D N°3 (Oficio 665/2022).** El SII respondió que el Pro Pyme General «solo deben considerar los ingresos percibidos y los gastos pagados» y que «no deben reconocer las variaciones de activos y pasivos, sea por tipo de cambio o variación de la unidad de fomento, sino hasta cuando estos sean percibidos o pagados». Enlace directo al PDF en el SII, comprobado el 3-11-2026:

```
https://www4.sii.cl/gabineteAdmInternet/descargaArchivo?nombreDocumento=665-01_03_2022.pdf&extension=pdf&acc=download&id=100e53ca-b652-4259-8d4d-d22b19e8d6ad&mediaType=application/pdf
```

[SII, Oficio Ordinario N° 665 del 01-03-2022, Renta, art. 14 letra D) N°3, leído 2026-11-03.] El `id` sale de la lista de oficios de renta de 2022 (`references/fuentes-leyes-sii.md` 3.4, campo `idBlobArchPublica`). Esto vale para el impuesto: en el libro NIIF el préstamo en UF se mide al cierre (`references/niif/03-instrumentos-financieros.md`), y la diferencia es temporaria.

**Suspensión del PPM por pérdidas:** vale también en el 14 D N°3 (`03-ppm.md`).

## 4. Cómo se sabe qué régimen tiene una sociedad

En simple: el régimen es un hecho tributario de la sociedad, que está en el SII; no se deduce de la contabilidad. Se mira en Mi SII.

- **En el SII:** el régimen aparece en el sitio personal del contribuyente (art. 14 D N°5: el SII informa la incorporación al momento del inicio de actividades). Lo revisa el dueño con la clave de cada sociedad; un agente sin esa clave no tiene acceso.
- El régimen es una decisión que un agente nunca toma solo: es un hecho que confirma el dueño en Mi SII. Una sociedad que quedó en 14 A sin que nadie lo eligiera, o una con accionistas que son sociedades (que no puede ser 14 D N°8), se confirma igual.

**Advertencia: entidades relacionadas en el límite de 75.000 UF.** Por el art. 14 D N°1 (b), al promedio de ingresos de cada sociedad Pro Pyme se suman los de sus relacionadas, y por el art. 8 N°17 letra (e) del Código Tributario, las entidades en que una misma persona natural tiene más del 10 % son relacionadas entre sí. Si el dueño, o una sociedad suya, tiene más del 10 % de otra empresa (el art. 8 N°17 letra c cuenta la participación «directamente o a través de otras personas o entidades»), los ingresos brutos del giro de esa empresa se suman a los de sus sociedades Pro Pyme para ver si siguen siendo Pyme, en la proporción mayor entre capital, utilidades, ingresos o votos. Si el dueño tiene más del 50 % de dos sociedades, están bajo un controlador común (letra b) y entre ellas se suma todo, no una proporción.

No son solo los ingresos del giro: la misma letra (b) ordena sumar las rentas que las relacionadas perciben por participaciones en otras empresas. **Un dividendo que una sociedad de inversión del dueño cobra de una empresa en que participa** es una renta de esa sociedad; si ella y otra sociedad Pro Pyme del dueño son relacionadas por la letra (e) (el dueño con más del 10 % de cada una), ese dividendo entra, en la proporción que corresponda, al promedio de ingresos de la otra. Un dividendo grande puede así sacar del Pro Pyme a una sociedad que no lo cobró, además de pesar en el 35 % de rentas pasivas de la que lo cobró (§2). Antes de un reparto grande, se mira el efecto en todas las relacionadas.

**Requiere decisión del dueño** (el hecho: qué porcentaje tiene de cada empresa, directamente y a través de sus sociedades, y qué ingresos tiene cada una). Si el porcentaje pasa del 10 % y los ingresos sumados pasan de 75.000 UF de promedio, la pregunta va a un contador externo, porque decide el régimen de varias sociedades. La proporción está **verificada** en el texto de la ley (§2); qué participación se mide en el caso de la letra (e) es criterio fundado.

## 5. Depreciación y corrección monetaria en la práctica

- La depreciación que se contabiliza es la financiera (NIIF); la tributaria del régimen del año se calcula al lado para el F22. En el 14 D N°3 la tributaria es instantánea por el art. 14 D N°3 (d).
- La corrección monetaria del 14 A se hace en la hoja de trabajo del F22, no en el libro NIIF.
- El F22, el capital propio tributario y la renta líquida imponible están en `07-f22-empresa.md`.
