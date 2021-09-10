-- "inventario.i" -> invent.i

Add to every thing
  Has peso 0.
End add.


Add to every actor
  Has peso 50.
End add.

Add to every object
  Has peso 5.
End add.


Synonyms
  i = inventario.

Syntax
  inventariare = inventario.

Verb inventariare
  Does
    List hero.
    List worn.
End verb.


The worn IsA entity
  Container
    Limits
      Count 10 then
        "Hai raggiunto il numero massimo di capi indossabili.
         Dovresti toglierti qualcosa prima."
      peso 50 then
        "Hai raggiunto il peso massimo di capi indossabili.
         Dovresti toglierti qualcosa prima."
    Header
      "Stai indossando"
    else ""
End the.
