# Schritt für Schritt zu einem anderen Aussehen
Ziel: Kleine optische Anpassungen an der Kursoberfläche. Kurstitel und Kursabschnittüberschriften sollen farbig sein.

1. Wechsel des Editors (Profilbild -> Einstellungen -> Texteditor -> Einfacher Text) auf Einfacher Text. Damit schnell hin und her gewechselt werden kann, empfiehlt es sich ein Bookmark zu setzen.
2. Anschliessend wird ein neuer Text-Block erstellt
3. Im Text kann nun der CSS-Code plaziert werden
4. Um herauszufinden, welche Stelle im Styling-Sheet geändert werden möchte. Öffnet man die zu ändernde Kursseite, klickt mit der rechten Maustaste auf das zu ändernde Objekt. Nun wird das gesamte Styling-Sheet angezeigt. Links HTML, Mitte CSS.
5. Nun muss mit der Maustaste im linken Fenster die Stelle gesucht werden, die geändert werden soll, anschliessend kann im mittleren Fenster ausprobiert werden, wie die Änderungen sich auswirken. Mit der tab-Taste kann im Code gesprungen werden (Tab = vorwärts, shift+tab = rückwärts)
6. Der geänderte Code ist zu kopieren und anschliessend in den Block einzufügen.
7. Der Link zum Block ist **unbedingt zu bookmarken**, da falls irgendetwas vergessen wird. alles verschwindet!
8. Nun kann der Block gespeichert werden und damit treten die Änderungen in Kraft.
9. Es empfiehlt sich, die Änderungen zu dokumentieren, damit am Ende einfach ersichtlich ist, was geändert wurde und wieso.
10. Manchmal kann es sein, dass nichts passiert. Dann muss der Cache geleert werden. Das geht einfach mit Ctrl + F5

## CSS-Styling-Vorlage

```
<style>
/* Ändert die Kursabschnittsbeschriftung */
.course-section-header {
  background-color: #ff6600ff;
  padding: 10px;
  border-radius: 10px;
}
</style>
```
<p>
  <span class="btn btn-secondary" role="button">
    [[Hauptseite | zurück zur Hauptseite]]
  </span>
</p>
