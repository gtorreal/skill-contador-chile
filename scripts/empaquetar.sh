#!/usr/bin/env bash
# Arma dist/contador-chile.zip con la carpeta del skill en el nivel superior,
# como lo exige la subida de skills en Claude (web y escritorio).
set -euo pipefail

raiz="$(cd "$(dirname "$0")/.." && pwd)"
dist="$raiz/dist"

rm -rf "$dist"
mkdir -p "$dist/contador-chile"
cp -R "$raiz/contador/." "$dist/contador-chile/"
find "$dist" -name '.DS_Store' -delete
(cd "$dist" && zip -qr contador-chile.zip contador-chile)
rm -rf "$dist/contador-chile"

echo "$dist/contador-chile.zip"
