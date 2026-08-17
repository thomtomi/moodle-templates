# Moodle-Vorlagen

Dieses Repository enthält wiederverwendbare **Vorlagen für Moodle-Kurse**, geschrieben in Markdown (`.md`).  
Ziel ist es, Lehrpersonen eine einheitliche Ausgangsbasis für häufig benötigte Dokumente zu bieten – von Prüfungsabläufen über Kommunikationsregeln bis hin zu Semesterplänen.

---

## Inhaltsverzeichnis

1. [Ordnerstruktur](#ordnerstruktur)
2. [Vorlagen verwenden](#vorlagen-verwenden)
3. [Markdown in HTML konvertieren](#markdown-in-html-konvertieren)
   - [Methode 1: Pandoc (empfohlen)](#methode-1-pandoc-empfohlen)
   - [Methode 2: Visual Studio Code](#methode-2-visual-studio-code)
   - [Methode 3: Online-Konverter](#methode-3-online-konverter)
   - [Methode 4: Python-Skript](#methode-4-python-skript)
4. [HTML in Moodle einbinden](#html-in-moodle-einbinden)
5. [Neue Vorlagen beitragen](#neue-vorlagen-beitragen)

---

## Ordnerstruktur

```
moodle-templates/
│
├── pruefungen/                        # Alles rund um Prüfungen
│   ├── pruefungsablauf.md             # Ablauf und Checkliste für eine Prüfung
│   └── nachtraegliche_beurteilung.md  # Regelungen für Nachprüfungen
│
├── kommunikation/                     # Kommunikationsregeln und Textbausteine
│   ├── kommunikationskanaele.md       # Übersicht der verfügbaren Kanäle
│   └── ankuendigung_moodle.md         # Textbausteine für Forum-Ankündigungen
│
├── anleitungen/                       # Schritt-für-Schritt-Anleitungen
│   ├── moodle_kurs_einrichten.md      # Moodle-Kurs anlegen und konfigurieren
│   └── markdown_zu_html.md            # Markdown in HTML konvertieren
│
├── allgemeines/                       # Kursdokumente für den allgemeinen Gebrauch
│   ├── kursregeln.md                  # Verhaltens- und Arbeitsregeln im Kurs
│   └── semesterplanung.md             # Wochenplan und Beurteilungsübersicht
│
└── README.md                          # Diese Datei
```

---

## Vorlagen verwenden

1. Gewünschte `.md`-Datei öffnen (im Browser auf GitHub oder lokal im Editor).
2. Inhalt kopieren und in einen Texteditor einfügen (z. B. Notepad, VS Code).
3. Alle Platzhalter in eckigen Klammern `[...]` durch eigene Inhalte ersetzen.
4. Datei speichern – entweder als `.md` für weitere Bearbeitung oder gleich in HTML konvertieren (siehe nächster Abschnitt).

> **Tipp:** Platzhalter wie `[Kursname einfügen]` oder `[TT.MM.JJJJ]` sind in allen Vorlagen einheitlich markiert. Die Suche-und-Ersetzen-Funktion des Editors (Ctrl+H) erleichtert das Ausfüllen.

---

## Markdown in HTML konvertieren

Moodle akzeptiert in Textfeldern und Seiten direkt **HTML-Code**. Die Vorlagen sind als **Markdown** gespeichert, weil Markdown:

- in jedem einfachen Texteditor lesbar und bearbeitbar ist,
- kürzer und übersichtlicher als rohes HTML ist,
- mit frei verfügbaren Werkzeugen in wenigen Sekunden in HTML umgewandelt werden kann.

Nachfolgend sind vier Methoden beschrieben – von der leistungsfähigsten bis zur schnellsten.

---

### Methode 1: Pandoc (empfohlen)

[Pandoc](https://pandoc.org) ist ein kostenloses, quelloffenes Kommandozeilenwerkzeug, das Dokumente zwischen Dutzenden von Formaten konvertiert.

#### 1.1 Installation

| Betriebssystem | Installationsweg |
|----------------|-----------------|
| **Windows** | [Installer herunterladen](https://pandoc.org/installing.html) **oder** in PowerShell: `winget install JohnMacFarlane.Pandoc` |
| **macOS** | Im Terminal: `brew install pandoc` (Homebrew muss installiert sein) |
| **Linux (Debian/Ubuntu)** | Im Terminal: `sudo apt install pandoc` |

Installation prüfen:
```bash
pandoc --version
```

#### 1.2 Einfache Konvertierung

```bash
pandoc eingabe.md -o ausgabe.html
```

**Beispiel** für eine Vorlage aus diesem Repository:
```bash
pandoc pruefungen/pruefungsablauf.md -o pruefungsablauf.html
```

#### 1.3 Vollständige HTML-Seite erzeugen (empfohlen)

Die Option `--standalone` erzeugt eine vollständige HTML-Datei mit `<html>`, `<head>` und `<body>` – ideal für Moodle:

```bash
pandoc eingabe.md --standalone -o ausgabe.html
```

#### 1.4 Mit eigenem CSS-Design

Für ein einheitliches Erscheinungsbild aller Vorlagen können Sie eine gemeinsame CSS-Datei verwenden:

```bash
pandoc eingabe.md --standalone --css moodle-stil.css -o ausgabe.html
```

#### 1.5 Ganzen Ordner auf einmal konvertieren (Bash/macOS/Linux)

```bash
for f in pruefungen/*.md; do
  pandoc "$f" --standalone -o "${f%.md}.html"
done
```

---

### Methode 2: Visual Studio Code

[VS Code](https://code.visualstudio.com/) ist ein kostenloser Editor mit komfortabler Markdown-Unterstützung.

1. VS Code herunterladen und installieren.
2. Extension **«Markdown Preview Enhanced»** installieren:
   - Erweiterungssymbol in der linken Leiste → Suche `Markdown Preview Enhanced` → **Installieren**.
3. Eine `.md`-Datei in VS Code öffnen.
4. Vorschau öffnen: **Ctrl+Shift+V** (Windows/Linux) oder **Cmd+Shift+V** (macOS).
5. HTML exportieren: Rechtsklick in der Vorschau → **«Export → HTML»**.

Die erzeugte `.html`-Datei befindet sich im selben Ordner wie die `.md`-Datei.

---

### Methode 3: Online-Konverter

Für schnelle Konvertierungen ohne lokale Installation eignen sich folgende Tools:

| Tool | URL | Besonderheiten |
|------|-----|---------------|
| **Dillinger** | [dillinger.io](https://dillinger.io) | Echtzeit-Vorschau, Import/Export als HTML |
| **Markdown to HTML** | [markdowntohtml.com](https://markdowntohtml.com) | Sehr einfach, Ergebnis direkt kopierbar |
| **Pandoc Try** | [pandoc.org/try](https://pandoc.org/try/) | Offizielle Pandoc-Weboberfläche, viele Optionen |

**Vorgehen (Beispiel Dillinger):**

1. Website öffnen.
2. Markdown-Text links einfügen (aus der `.md`-Datei kopieren).
3. Rechts erscheint sofort die formatierte Vorschau.
4. **«Export As»** → **«HTML»** klicken – Datei wird heruntergeladen.

> ⚠️ **Datenschutzhinweis:** Laden Sie keine Texte mit personen- oder schülerbezogenen Daten (Namen, Noten, etc.) auf externe Online-Dienste hoch.

---

### Methode 4: Python-Skript

Falls Python (≥ 3.7) installiert ist, können Sie mit wenigen Zeilen Code konvertieren.

#### 4.1 Bibliothek installieren

```bash
pip install markdown
```

#### 4.2 Skript erstellen

Erstellen Sie eine Datei `konvertieren.py` mit folgendem Inhalt:

```python
import markdown
import sys
import os

def konvertieren(eingabe_pfad, ausgabe_pfad):
    with open(eingabe_pfad, encoding="utf-8") as f:
        text = f.read()

    html_inhalt = markdown.markdown(
        text,
        extensions=["tables", "fenced_code", "nl2br"]
    )

    html = f"""<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{os.path.basename(eingabe_pfad)}</title>
  <style>
    body {{ font-family: Arial, sans-serif; max-width: 800px; margin: 2rem auto; padding: 0 1rem; }}
    table {{ border-collapse: collapse; width: 100%; }}
    th, td {{ border: 1px solid #ccc; padding: 0.5rem; text-align: left; }}
    th {{ background: #f0f0f0; }}
    code {{ background: #f5f5f5; padding: 0.2em 0.4em; border-radius: 3px; }}
    pre code {{ display: block; padding: 1em; }}
  </style>
</head>
<body>
{html_inhalt}
</body>
</html>"""

    with open(ausgabe_pfad, "w", encoding="utf-8") as f:
        f.write(html)

    print(f"Konvertiert: {eingabe_pfad} → {ausgabe_pfad}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Verwendung: python konvertieren.py eingabe.md ausgabe.html")
        sys.exit(1)
    konvertieren(sys.argv[1], sys.argv[2])
```

#### 4.3 Skript ausführen

```bash
python konvertieren.py pruefungen/pruefungsablauf.md pruefungsablauf.html
```

---

## HTML in Moodle einbinden

Nachdem die HTML-Datei erstellt wurde, kann der Inhalt auf zwei Arten in Moodle genutzt werden:

### Option A: HTML-Inhalt als Moodle-Seite einfügen

1. Im Moodle-Kurs **«Bearbeiten einschalten»**.
2. **«Aktivität oder Material anlegen»** → **«Seite»** wählen.
3. Im Texteditor auf das Symbol **«HTML-Quellcode»** (`</>`) klicken.
4. Den Inhalt aus der `.html`-Datei zwischen `<body>` und `</body>` einfügen.
5. Auf **«Speichern und anzeigen»** klicken.

### Option B: HTML-Datei direkt hochladen

1. **«Bearbeiten einschalten»** → **«Aktivität oder Material anlegen»** → **«Datei»**.
2. Die `.html`-Datei hochladen.
3. In den Einstellungen unter **«Darstellung»** → **«Eingebettet»** wählen, damit die Seite direkt im Kurs angezeigt wird.
4. Auf **«Speichern und zum Kurs»** klicken.

---

## Neue Vorlagen beitragen

Möchten Sie eine eigene Vorlage zum Repository beitragen?

1. **Repository forken** (oben rechts auf GitHub: «Fork»).
2. Im eigenen Fork eine neue `.md`-Datei im passenden Unterordner erstellen.
3. **Pull Request** erstellen und kurz beschreiben, wofür die Vorlage gedacht ist.

**Namenskonventionen für Dateien:**
- Kleinbuchstaben, Wörter mit Unterstrich getrennt: `meine_neue_vorlage.md`
- Keine Leerzeichen, Umlaute oder Sonderzeichen im Dateinamen.

**Vorlage-Struktur:**
- Titel als H1-Überschrift (`# Titel`)
- Platzhalter in eckigen Klammern: `[Kursname einfügen]`
- Abschnitte klar mit H2/H3-Überschriften strukturieren
- Am Ende: `*Vorlage zuletzt aktualisiert: [Datum]*`

---

*README zuletzt aktualisiert: Mai 2026*
