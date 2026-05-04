-- Fügt Bootstrap-Klassen an allen Tabellen ein.
-- Ergebnis: <table class="table table-hover">
function Table(el)
  el.attr.classes:insert("table")
  el.attr.classes:insert("table-hover")
  return el
end
