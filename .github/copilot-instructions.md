# Regeln für den KI-Agenten (Copilot) – Moodle Vorlagen (Markdown → HTML)

## Kontext
Dieses Repository enthält wiederverwendbare **Markdown-Vorlagen für Moodle-Kurse** (Sek II).
Die Vorlagen werden in **HTML für Moodle** überführt.

**Didaktischer Bezugsrahmen:** Instruktionsdesign (Einführung → Lernziele → Auftrag → Aufwand → Bewertung → Termin → Reflexion → Literatur), Constructive Alignment, Scaffolding, Usability.

**Icon-Standard:** Font Awesome via **filter_fontawesome**. Icons als Textmarker, z. B. `[fa-clock-o]`.

## Ziel
- Saubere, wiederverwendbare Markdown-Vorlagen erstellen (copy-paste-fähig).
- Konsistente HTML-Ausgabe für Moodle erzeugen.
- Vorlagen möglichst **barrierearm** gestalten (gut lesbar, gut navigierbar, screenreader-tauglich).

## Arbeitsweise (Workflow)
1. Analyse & Vorschlag (kurz in Bulletpoints).
2. Umsetzung erst nach Bestätigung in den erlaubten Ordnern.
3. Kurzer Qualitätscheck (Verständlichkeit, **Barrierefreiheit**, Alignment, Moodle-Kompatibilität).
4. Wiederverwendbarkeit: Platzhalter/Variablen konsequent kennzeichnen.
5. Führe Änderungen nur nach expliziter Bestätigung aus („dry-run“ zuerst).

## Einschränkungen (Repository)
- Änderungen nur in `/templates-md` und `/templates-html`.
- Bei Änderungen: Pfad + kurze Begründung + relevanter Ausschnitt (kein vollständiges File, ausser verlangt).
- Nichts löschen ohne Rückfrage.
- Kein JavaScript, keine externen Abhängigkeiten.
- HTML muss in Moodle-Textfeldern robust funktionieren.

## Workflow Markdown → HTML

- Die Dateien in `/templates-md` sind die verbindliche Quelle.
- Dateien in `/templates-html` werden aus den Markdown-Dateien erzeugt.
- HTML-Dateien dürfen nicht manuell inhaltlich weiterentwickelt werden, ausser ich verlange es ausdrücklich.
- Änderungen an Vorlagen erfolgen zuerst immer in der passenden Markdown-Datei.
- Wenn eine passende HTML-Datei bereits existiert, darf sie nur nach expliziter Bestätigung überschrieben werden.
- Vor dem Überschreiben bestehender HTML-Dateien muss kurz benannt werden:
  - welche Datei überschrieben wird,
  - warum die Änderung nötig ist,
  - ob Inhalte verloren gehen könnten.
- Wenn Markdown und HTML voneinander abweichen, gilt grundsätzlich Markdown als Quelle.

## Zielgruppen- und Sprachregel (verbindlich)
- **Für Lernende:** immer **Sie-Form**.
- **Für Lehrpersonen-Anleitungen:** immer **Du-Form**.
- Keine Mischung innerhalb derselben Vorlage.

## Didaktische Regeln (Muss-Kriterien)
Vorlagen folgen (wo sinnvoll) dem Raster:
1) Einführung  2) Lernziele  3) Auftrag  4) Aufwand  5) Bewertung  6) Termin  7) Reflexion  8) Literatur

**Constructive Alignment:** Lernziele ↔ Aktivität ↔ Bewertung müssen stimmig sein.
**Moodle-First:** Aktivitäten/Settings konkret benennen.

## Barrierefreiheit (verbindlich, „so gut wie möglich“)

### Struktur & Navigation
- Überschriftenhierarchie sauber (keine Sprünge; i. d. R. `h3`-Blöcke in Moodle-Texten konsistent).
- Inhalte in **Chunks**: kurze Absätze, klare Zwischenüberschriften, Listen statt Fliesstext.
- Reihenfolge logisch (wichtiges zuerst), keine rein visuelle Anordnung.

### Sprache & Lesbarkeit
- Kurze Sätze, aktive Verben, klare Begriffe.
- Abkürzungen sparsam; wenn nötig kurz erklären.
- Keine Informationen nur über Position/Farbe („oben rechts“) ohne Alternative.

### Links
- **Sprechende Linktexte** (nicht „hier“).
- Vermeide identische Linktexte für unterschiedliche Ziele.
- Externe Links: `target="_blank"` + `rel="noopener"`.
- Optional Hinweis, wenn Link in neuem Tab öffnet (kurz).

### Medien
- Wenn Bilder vorgesehen: Platzhalter für **Alt-Text** vorsehen.
- Bei Videos: Hinweis auf **Untertitel/Transkript** (falls verfügbar) ergänzen.

### Tabellen & Layout
- Tabellen nur, wenn unbedingt nötig; sonst Listen verwenden.
- Keine Inline-Styles, keine „Layout-Tricks“ (z. B. viele `<br>` für Formatierung).

### Icons (Font Awesome)
- Icons ergänzen nur, sie ersetzen keine Bedeutung.
- Überschrift muss auch ohne Icon verständlich sein.

## Markdown-Regeln
- Klare Überschriftenstruktur, saubere Listen.
- Platzhalter konsistent, z. B. `{KURSTITEL}`, `{THEMA}`, `{DAUER}`, `{ABGABE}`.

## HTML-Regeln (Moodle-kompatibel)
- Einfache Tags: `h3`, `p`, `ul`, `ol`, `li`, `strong`, `em`, `hr`, `br`, `code`, `sub`, `sup`, `a`.
- Keine Inline-Styles wenn möglich.
- Chemie/Mathe: Entities (`&minus;`, `&rarr;`, `&times;`) + `sub/sup`.
- Keine komplexen Verschachtelungen (max. 2–3 Ebenen).
- HTML muss auch ohne CSS verständlich bleiben.

## Icon-Regeln (filter_fontawesome)
- Icons als Textmarker in Überschriften, z. B. `<h3>[fa-clock-o] Aufwand</h3>`.
- Kein `<i class="fa ...">` ausser explizit verlangt.

## Template-Standards
- Pro Template gibt es eine gepflegte Quelldatei:
  - `/templates-md/<name>.md`
- Die passende HTML-Datei wird daraus erzeugt:
  - `/templates-html/<name>.html`
- Namen sprechend und mit Zielgruppe:
  - `activity-...-lernende-sie.*`
  - `howto-...-lehrperson-du.*`

## Qualität (Pflicht-Check am Ende)
- Verständlichkeit ✓ | **Barrierefreiheit ✓** | Usability ✓ | Alignment ✓ | Moodle-Kompatibilität ✓

## Output-Anforderung
- Kurz in Markdown antworten.
- Bei Änderungen: Pfad + Begründung + relevante Snippets/Diff.
