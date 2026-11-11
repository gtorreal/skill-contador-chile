# AGENTS.md

## Proyecto

skill-contador-chile — un skill para agentes de IA que hace de **contador compañero** de una pyme chilena y de su dueño: responde dudas contables y tributarias, recomienda en qué cuenta va cada cosa y por qué, según la norma (NIIF para las PYMES y la ley tributaria chilena) y la realidad de esa empresa, y se lo explica a alguien que no sabe contabilidad. No lleva los libros ni presenta nada ante el SII (ADR-001). Proyecto público y colaborativo: contadores y no contadores proponen cambios; lo mantiene gtorreal.

**Antes de trabajar, leer `docs/CONTEXTO.md`** (estado real y qué está decidido) y `docs/PENDIENTES.md` (el plan por fases y las decisiones abiertas).

## Layout

- `contador/` — **el skill**: lo que se instala. `SKILL.md` y `references/` (método, norma tributaria, NIIF, glosario, fuentes, calendario). Nada de lo que está fuera de esta carpeta llega al agente del usuario.
- `docs/adr/` — las decisiones del proyecto, una por archivo.
- `docs/CONTEXTO.md` — estado del proyecto. `docs/PENDIENTES.md` — fases y decisiones abiertas.
- `casos/` — los casos de prueba (fase 3; todavía no existe).
- `README.md` — para personas: qué es, cómo se instala, cómo se empieza, qué no hace.
- `scripts/empaquetar.sh` — arma `dist/contador-chile.zip` (fuera de git) con la carpeta del skill en el nivel superior y llamada igual que el `name` de `SKILL.md`, como lo exige la subida de skills en Claude.
- `.github/workflows/publicar-version.yml` — al empujar una etiqueta `v*`, arma el ZIP, revisa que `SKILL.md` quede dentro de la carpeta y crea el release con el ZIP adjunto.

## Instalar para probar

Desde la raíz del repositorio:

```bash
ln -s "$PWD/contador" ~/.claude/skills/contador-chile
```

## Publicar una versión

Con `main` al día y revisado (sin datos reales ni rutas locales), desde la raíz:

```bash
git tag v0.2.0 && git push origin v0.2.0
```

GitHub Actions crea el release con `contador-chile.zip`. Versiones: el segundo número sube con una fase o una guía nueva; el tercero, con correcciones. Para probar el ZIP sin publicar: `scripts/empaquetar.sh`.

No instalarlo en el mismo equipo que otro skill contador (por ejemplo, el privado del repo contabilidad): con los dos, ambos se activan con la misma pregunta.

## Invariantes

Violarlas exige enmendar un ADR, nunca una excepción puntual.

- Todo criterio contable o tributario del skill DEBE citar su fuente oficial (ley, reglamento, circular u oficio del SII, texto de la NIIF para las PYMES del IASB) con la fecha en que se leyó. Doctrina, blogs, foros o una IA solo sirven para encontrar la fuente. Sin fuente leída, el texto lo marca **sin verificar** (ADR-005).
- El skill NUNCA lleva datos reales de una persona o empresa: nombres, RUT, montos, estructuras de propiedad. Los ejemplos se inventan, con cifras redondas, y se marcan como ejemplo. Los únicos RUT permitidos son los genéricos del SII (55.555.555-5 y 66.666.666-6).
- Todo archivo de `contador/references/` DEBE llevar la fecha de su última revisión (`Revisado: aaaa-mm-dd` bajo el título). El skill avisa antes de usar para registrar o declarar un archivo revisado hace más de 12 meses (ADR-004).
- Un valor que cambia seguido (UTM, plazos del año, tramos del F22, una tasa transitoria) NUNCA se escribe como dato fijo sin su fecha: va en `references/donde-buscar.md` con la URL oficial, cómo leerla y el plan B de pedírselo al usuario (ADR-004).
- El skill NUNCA envía, firma ni presenta nada ante el SII, NUNCA escribe contraseñas y NUNCA guarda, emite, paga ni confirma nada en la aplicación del usuario sin que el usuario lo confirme en ese momento (ADR-003).
- Lo que dependa de un hecho que solo el usuario sabe, o de una elección suya, se le pregunta con opciones concretas y el efecto de cada una; el skill no lo decide (ADR-005).
- Todo cambio de criterio llega con un caso de prueba que lo cubre, desde que exista `casos/` (ADR-005, ADR-006).

## Convenciones

- Español de Chile, tuteo neutro, sin modismos. Escrito para alguien que no sabe contabilidad: un término técnico se explica la primera vez.
- Prosa clara y oraciones completas; las citas, entre corchetes con la fuente y la fecha de lectura.
- `contador/SKILL.md` se mantiene corto (bajo 15 KB): el detalle va a `references/`, que se lee cuando hace falta.
- Un commit por cambio, en español, con formato convencional (`feat(iva): ...`, `fix(f29): ...`, `docs: ...`).

## Decisiones

Fundamento completo en `docs/adr/`.

- **ADR-001**: Contador compañero, no tenedor de libros: responde, recomienda la cuenta y explica, sobre la norma y la realidad de la empresa. Alcance: pymes en 14 D N°3, 14 D N°8 o 14 A y su dueño; remuneraciones y rubros especiales, fuera por ahora.
- **ADR-002**: El contexto de la empresa vive en la carpeta del usuario (`ficha-empresa.md`, su plan de cuentas, `mapa-de-mi-app.md`); las preguntas para armarlo viven en el skill, que entrevista al usuario si no encuentra la ficha.
- **ADR-003**: El skill ve la realidad del usuario por preguntas, pantallazos, archivos exportados o navegando su aplicación contable, con reglas: el usuario inicia sesión, solo lectura por defecto, nada se guarda ni se envía sin confirmación.
- **ADR-004**: Lo estable se escribe con fuente y fecha; lo que cambia seguido se busca en la fuente oficial con un mapa de dónde buscar y un plan B. Archivo revisado hace más de 12 meses, aviso.
- **ADR-005**: La confianza se gana con niveles de certeza en cada respuesta, una lista de casos en que el skill para y deriva a un contador, y casos de prueba con resultados publicados.
- **ADR-006**: Colaboración: plantillas de issue para respuesta incorrecta, caso nuevo y cambio normativo; sin fuente no entra; todo error reportado se vuelve caso; revisores por área cuando haya contadores.
- **ADR-007**: El skill vive en `contador/`, separado de los documentos del proyecto y de los casos.

## Mantenimiento

- **Decisión que sostiene el diseño** → ADR nuevo en `docs/adr/` y una línea en Decisiones.
- **Regla nueva** (un tipo de error, un «esto nunca se hace así») → Invariantes, en la misma tarea que la enseñó.
- **Fase, deuda o decisión postergada** → `docs/PENDIENTES.md`, con el motivo; al cerrarla, se tacha con su referencia.
- **Estado del proyecto** → `docs/CONTEXTO.md`, con su fecha.
- **Un error del skill encontrado en uso** → caso nuevo en `casos/` y, si cambia el criterio, la referencia con su fuente.

Actualizar estas capas es parte del cierre de cada tarea.
