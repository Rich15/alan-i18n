-- "heroe.i" <-- "hero.i"

Synonyms
  mi, me, yo, heroe, h�roe = hero.

The hero IsA actor
  Container
    Limits
      Count 10 then
        "No puedes llevar m�s. Debes dejar algo antes."
      peso 50 then
        "No puedes llevar m�s peso. Debes dejar algo antes."
    Header
      "Tienes"
    else
      "No tienes nada."
End the hero.
