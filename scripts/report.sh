#!/bin/bash
# report.sh — TOP-5 największych podkatalogów + timestamp
# Wywołanie: bash scripts/report.sh [-n] <KATALOG>
set -Eeuo pipefail

DRYRUN=0
if [[ "${1:-}" == "-n" ]]; then DRYRUN=1; shift; fi

DIR="${1:-}"
if [[ -z "$DIR" ]]; then
  echo "Użycie: bash scripts/report.sh [-n] <KATALOG>" >&2
  exit 2
fi

if [[ ! -d "$DIR" ]]; then
  echo "Błąd: katalog '$DIR' nie istnieje" >&2
  exit 1
fi

date +"%F %T"

# TOP-5 podkatalogów wg rozmiaru (human)
# Jeżeli 'sort -h' nie jest dostępne, można zastąpić: 'du -s' + 'sort -n'
if command -v sort >/dev/null 2>&1 && sort --help 2>&1 | grep -q -- "-h"; then
  du -sh "$DIR"/* 2>/dev/null | sort -h | tail -5
else
  du -s "$DIR"/* 2>/dev/null | sort -n | tail -5
fi

if (( DRYRUN )); then
  echo "DRY-RUN: to tylko podgląd (nie wykonano operacji modyfikujących)"
fi
