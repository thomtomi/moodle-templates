# Anleitung: Markdown-Dateien in HTML konvertieren

**Zielgruppe:** Lehrpersonen, die Vorlagen in Moodle einbetten möchten  
**Ziel:** Eine `.md`-Datei aus diesem Repository in eine fertige `.html`-Datei umwandeln

---

## Warum Markdown → HTML?

Moodle akzeptiert in Textfeldern und Seiten direkt HTML-Code. Die Vorlagen in diesem Repository sind als Markdown (`.md`) geschrieben, da Markdown:

- leichter lesbar und pflegbar ist als rohes HTML,
- in jedem Texteditor bearbeitbar ist,
- schnell in HTML konvertiert werden kann.

---

## Methode 1: Pandoc (empfohlen, lokal)

[Pandoc](https://pandoc.org) ist ein kostenloses Kommandozeilenwerkzeug, das viele Formate ineinander umwandeln kann.

### Installation

| Betriebssystem | Befehl / Methode |
|----------------|-----------------|
| Windows | [Installer herunterladen](https://pandoc.org/installing.html) oder `winget install JohnMacFarlane.Pandoc` |
| macOS | `brew install pandoc` (Homebrew erforderlich) |
| Linux (Debian/Ubuntu) | `sudo apt install pandoc` |

### Konvertierung

Öffnen Sie ein Terminal (Eingabeaufforderung / PowerShell) und führen Sie folgenden Befehl aus:

```bash
pandoc eingabe.md -o ausgabe.html
```

**Beispiel:**
```bash
pandoc pruefungen/pruefungsablauf.md -o pruefungsablauf.html
```

#### Mit vollständiger HTML-Seite (empfohlen für Moodle)

```bash
pandoc eingabe.md --standalone -o ausgabe.html
```

Die Option `--standalone` erzeugt eine vollständige HTML-Seite mit `<html>`, `<head>` und `<body>`.

#### Mit CSS-Styling

```bash
pandoc eingabe.md --standalone --css stil.css -o ausgabe.html
```

Eine einfache CSS-Datei können Sie selbst erstellen oder online beziehen.

---

## Methode 2: Visual Studio Code (lokal, ohne Terminal)

1. [VS Code herunterladen](https://code.visualstudio.com/) und installieren.
2. Extension **«Markdown All in One»** oder **«Markdown Preview Enhanced»** installieren:
   - Erweiterungen-Symbol in der Seitenleiste → Suche nach «Markdown Preview Enhanced» → Installieren.
3. Markdown-Datei in VS Code öffnen.
4. Rechtsklick im Editorbereich → **«Open Preview»** (Vorschau anzeigen).
5. In der Vorschau: Rechtsklick → **«Export → HTML»** (je nach Extension).

---

## Methode 3: Online-Konverter (ohne Installation)

Für schnelle Konvertierungen ohne lokale Installation:

| Tool | URL | Hinweis |
|------|-----|---------|
| Dillinger | [dillinger.io](https://dillinger.io) | Import/Export als HTML möglich |
| Markdown to HTML | [markdowntohtml.com](https://markdowntohtml.com) | Einfach, direkt nutzbar |
| Pandoc Try | [pandoc.org/try](https://pandoc.org/try/) | Offizielle Pandoc-Weboberfläche |

> ⚠️ **Datenschutz:** Laden Sie keine Dateien mit schüler- oder personenbezogenen Daten auf externe Online-Dienste hoch.

---

## Methode 4: Python-Skript (für technisch versierte Lehrpersonen)

Falls Python (≥ 3.7) installiert ist:

```bash
pip install markdown
```

Dann ein einfaches Skript erstellen (`konvertieren.py`):

```python
import markdown
import sys

eingabe = sys.argv[1]
ausgabe = sys.argv[2]

with open(eingabe, encoding="utf-8") as f:
    text = f.read()

html = markdown.markdown(text, extensions=["tables", "fenced_code"])

with open(ausgabe, "w", encoding="utf-8") as f:
    f.write(f"<!DOCTYPE html><html><body>\n{html}\n</body></html>")

print(f"Konvertiert: {eingabe} → {ausgabe}")
```

Ausführen:
```bash
python konvertieren.py pruefungsablauf.md pruefungsablauf.html
```

---

## HTML in Moodle einbinden

Nachdem die HTML-Datei erstellt wurde, gibt es zwei Möglichkeiten, den Inhalt in Moodle zu nutzen:

### Option A: HTML-Inhalt einfügen

1. In Moodle eine **«Seite»**-Aktivität erstellen.
2. Im Texteditor auf das Symbol **«HTML-Quellcode»** (`</>`) klicken.
3. Den HTML-Inhalt (aus der `.html`-Datei, den Teil zwischen `<body>` und `</body>`) einfügen.
4. Speichern.

### Option B: HTML-Datei hochladen

1. In Moodle eine **«Datei»**-Aktivität erstellen.
2. Die `.html`-Datei hochladen.
3. Moodle zeigt die Seite direkt im Browser an, wenn Einstellung auf «Eingebettet» gestellt ist.

---

## Tipps

- Prüfen Sie die HTML-Ausgabe immer in einem Browser, bevor Sie sie in Moodle einfügen.
- Tabellen in Markdown werden von Pandoc korrekt als HTML-Tabellen (`<table>`) ausgegeben.
- Checklisten (`- [ ]`) werden von Pandoc als `<input type="checkbox">` gerendert.
- Für ein einheitliches Erscheinungsbild empfiehlt sich eine gemeinsame CSS-Datei für alle Vorlagen.

---

*Anleitung zuletzt aktualisiert: [Datum]*
