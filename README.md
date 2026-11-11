# skill-contador-chile

Un contador compañero para pymes chilenas y sus dueños, contadores o no, hecho como skill para agentes de IA (Claude Code, Claude en el escritorio, Codex y otros que leen `SKILL.md`).

Responde dudas contables y tributarias, recomienda en qué cuenta va cada cosa y por qué, revisa lo registrado y ayuda a preparar el F29, el cierre y el F22, aplicando la NIIF para las PYMES y la ley tributaria chilena a la realidad de tu empresa. No lleva tus libros: trabaja sobre los que ya tienes, en tu aplicación contable, tu planilla o con tu contador.

Cubre Pro Pyme (14 D N°3 y N°8) y régimen general (14 A); IVA, PPM, boletas de honorarios y retenciones, F29, F22 de la empresa y del dueño, declaraciones juradas, préstamos de socios e impuesto de timbres, patente municipal, y las secciones de la NIIF para las PYMES que más usa una pyme. Cada referencia cita su fuente oficial (ley, SII, IASB) con la fecha en que se leyó.

## Instalación

Primero baja `contador-chile.zip` desde la última versión: https://github.com/gtorreal/skill-contador-chile/releases/latest (en «Assets»). Ese archivo es el skill completo.

### En Claude, en la web o en la app de escritorio

1. En Settings > Capabilities, activa «Create and edit files» (en la versión anterior de la configuración se llama «Code execution and file creation»).
2. Ve a Customize > Skills, presiona «+», después «+ Create skill» y elige «Upload a skill».
3. Sube `contador-chile.zip` tal como lo bajaste, sin descomprimirlo.

El skill queda en tu lista y lo puedes activar o desactivar. Según la ayuda de Claude, se puede en los planes Free, Pro, Max y Ultra; en Team y Enterprise, si la organización no desactivó los skills creados por usuarios. Los menús están en inglés en la ayuda oficial y pueden cambiar: https://support.claude.com/en/articles/12512180-use-skills-in-claude. Para actualizarlo, baja el ZIP de la versión nueva y vuelve a subirlo.

### En Claude Code (Mac, Linux o Windows)

Descomprime `contador-chile.zip` dentro de la carpeta de skills de tu usuario, de modo que quede `.claude/skills/contador-chile/SKILL.md`:

- Mac y Linux: `~/.claude/skills/`
- Windows: `%USERPROFILE%\.claude\skills\`

Para actualizarlo, borra esa carpeta y descomprime el ZIP de la versión nueva.

### Si usas Git

Para tener siempre la última versión del repositorio (Mac o Linux):

```bash
git clone https://github.com/gtorreal/skill-contador-chile.git ~/skill-contador-chile
```

```bash
ln -s ~/skill-contador-chile/contador ~/.claude/skills/contador-chile
```

Para actualizarlo, `git pull` en esa carpeta.

## Cómo se empieza

Abre una conversación (en Claude Code, en una carpeta de trabajo para tu empresa) y dile:

> Armemos la ficha de mi empresa.

El skill te hace unas preguntas en simple (qué es tu empresa, en qué régimen está, si cobras IVA, cómo sacas plata, dónde llevas la contabilidad) y te dice dónde mirar lo que no sepas. Lo guarda en `ficha-empresa.md`, en tu carpeta, y lo usa en cada conversación. Si prefieres llenarla a mano, la plantilla está en `contador/references/ficha-empresa.md`.

Después, pregúntale lo que necesites:

- «Me llegó esta factura de un computador, ¿en qué cuenta va?» (y adjúntala o pega un pantallazo)
- «¿Qué tengo que declarar este mes en el F29?»
- «Le pagué a un diseñador con boleta de honorarios, ¿qué hago con la retención?»
- «¿Puedo sacar plata de la empresa para mí? ¿Cómo?»
- «Revisa mi registro de compras de octubre» (con el archivo que bajas del SII)

Si tu agente puede usar un navegador, el skill puede recorrer tu aplicación contable para aprender dónde está cada cosa. Tú inicias sesión: el skill nunca escribe tus contraseñas, solo mira, y no guarda ni envía nada sin que tú lo confirmes en ese momento.

## Cómo trabaja

- La norma vigente, leída en su fuente oficial, manda. Lo que cambia seguido (UF, UTM, plazos del año) lo busca en la fuente al usarlo, o te pide que se lo pegues.
- Cada respuesta que importa dice qué tan segura es: verificado, criterio fundado, sin verificar, depende de ti, o esto va a un contador.
- Hay casos en que para y te dice que vayas a un contador (cambio de régimen, una fiscalización, una rectificatoria, un monto grande con más de una respuesta), con la pregunta lista para mandarle.
- No envía, firma ni presenta nada ante el SII, y no da asesoría legal. Remuneraciones, por ahora, quedan fuera.

## Tus datos

La ficha y lo que el skill aprende de tu aplicación quedan en tu carpeta de trabajo. Este repositorio no tiene ni recibe datos de ninguna empresa.

## Advertencia

No reemplaza a un contador ni a un abogado. Las referencias tienen fecha de revisión y la norma cambia: revisa la vigencia antes de declarar. Úsalo bajo tu responsabilidad.

## Colaborar

Es un proyecto abierto: contadores y no contadores pueden proponer mejoras. Si una respuesta estuvo mal o no se entendió, o tienes una pregunta real que el skill debería saber responder, abre un issue (sin datos reales de tu empresa: inventa los nombres y montos). Las decisiones del proyecto están en `docs/adr/` y el plan, en `docs/PENDIENTES.md`.

## Estado

En construcción: la fase 1 (el contador compañero, la ficha, el plan de cuentas modelo, cómo ver tus datos y dónde buscar los valores que cambian) está lista; siguen las guías por tarea, los casos de prueba y un piloto con usuarios reales.

## Licencia

MIT.
