-- "inventario.i" -> invent.i
-- 0.6.2 : changed 'the Worn' from a 'thing' to an 'entity'

-- Library version 0.5.0
-- 0.4.1 - converted to ALANv3


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
  invent = invent.

Verb invent
  Does
    List hero.
    List worn.
End verb.


The worn IsA entity
  Container
    Limits
      Count 10 then
        "You can't wear anything more. You have to remove something first."
      peso 50 then
          "You can't wear anything more. You have to remove something first."
    Header
      "You are wearing"
    else ""
End the.
