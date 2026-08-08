<h3>[fa-life-ring] Fixierter Hilfsbutton</h3>

<p>
  Dieser Code platziert einen gut sichtbaren Hilfsbutton unten rechts auf der Moodle-Seite.
  Der Button bleibt beim Scrollen sichtbar und kann z.&nbsp;B. auf ein Hilfsforum, eine Supportseite
  oder eine Kontaktmöglichkeit verweisen.
</p>

<h4>[fa-info-circle] Funktion</h4>
<ul>
  <li><strong>position: fixed;</strong> fixiert den Button im Browserfenster.</li>
  <li><strong>bottom/right:</strong> bestimmt den Abstand von unten und rechts.</li>
  <li><strong>z-index:</strong> sorgt dafür, dass der Button über anderen Elementen liegt.</li>
  <li><strong>alt:</strong> beschreibt das Bild für Screenreader.</li>
</ul>

<h4>[fa-code] HTML-Code zum Kopieren</h4>

<pre><code>&lt;div style="position: fixed; bottom: 20px; right: 20px; z-index: 9999;"&gt;
  &lt;img class="img-fluid"
       style="width: 100px;"
       src="HIER_BILD_LINK_EINFÜGEN"
       alt="Moodle-Hilfe"&gt;
&lt;/div&gt;</code></pre>

<h4>[fa-exclamation-triangle] Hinweis</h4>
<p>
  Testen Sie den Button auf der Zielseite, da er je nach Bildschirmgrösse oder Moodle-Layout
  Inhalte überdecken kann. Verwenden Sie möglichst einen dauerhaften Bildlink und vermeiden Sie
  temporäre <code>draftfile.php</code>-Links.
</p>

<hr>

<p>
  [[Hauptseite | <span class="btn btn-secondary" role="button">← Zurück zur Hauptseite</span>]]
</p>
