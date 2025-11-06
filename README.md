# PI — Kolokwium (Linux + Skrypty + Git)

**Instrukcja (skrót):**

1. **Fork** tego repozytorium na swoim koncie GitHub.
2. **Clone** _własnego forka_ na maszynę w labie:  
   `git clone <adres_twojego_forka>`
3. Pracuj na gałęzi **`kolokwium/<TwojLogin>`**:  
   `git checkout -b kolokwium/<TwojLogin>`
4. Wykonaj zadania z `TASKS.md`. Wszystkie wyjścia zapisuj w katalogu **`out/`** (jeśli zadanie tego wymaga).
5. Zrób **min. 3 commity** z sensownymi opisami („zad1: ls + grep”, „zad2: find/xargs”…).
6. **Push** na swój fork i utwórz **Pull Request do własnego forka** (✱ **nie** do repo prowadzącego!).
7. W opisie PR dodaj 1–3 zdania: co było OK, co sprawiło trudność.

## Zasady
- Wolno używać `man`, `--help` i własnej ściągi z poprzednich zajęć.
- Zakaz komunikacji ze współstudentami i używania generatorów AI.
- Cytuj ścieżki (np. `"$HOME/some dir"`), nie „parsuj `ls`”.

## Szybkie wskazówki
- `grep -Ei 'error|warn'` — dwa wzorce, bez rozróżniania wielkości liter.
- Normalizacja słów: `tr -cs '[:alnum:]' '\n' | tr '[:upper:]' '[:lower:]'`
- Bezpieczne liczenie po dopasowaniach: `find ... -print0 | xargs -0 ...`
- Sortowanie „human”: `sort -h` (jeśli brak, użyj `du -s` + `sort -n`).

Powodzenia!
