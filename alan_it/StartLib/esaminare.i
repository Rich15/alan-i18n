-- "esaminare.i" -> examine.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  Is
    esaminabile.    --> examinable
    ispezionabile.  --> searchable
End add.

Add to every actor
  Is not ispezionabile.
End add.

----

Synonyms
  descrivi, osserva, X = esamina.
--x, inspect, 'check' = examine.

Syntax
  esaminare = esamina (ogg) *
    Where ogg IsA thing
      else "You can't examine that!"
  esaminare = guarda (ogg) *.


Add to every thing
  Verb esaminare
    Check ogg is esaminabile
      else "Non puoi esaminare" say the ogg. "."
    Does
      "Non noti nulla di particolare riguardo" say the ogg. "."
  End verb.
End add.

----

Synonyms
  dentro = 'in'.

Syntax
  guardare_dentro = guarda 'in' (ogg)
    Where ogg IsA thing
      else "You can't look inside that."
    And ogg IsA container
      else "You can't look inside that."

Add to every object
  Verb guardare_dentro
    Check ogg is esaminabile
      else "You can't look inside" say the ogg. "."
    Does
      List ogg.
  End verb.
End add.

----

Synonyms
  perquisisci = ispeziona.

Syntax
  ispezionare = ispeziona (ogg)
    Where ogg IsA thing
      else "You can't search that!"

Add to every object
  Verb ispezionare
    Check ogg is ispezionabile
      else "You can't search" say the ogg. "."
    Does
      "You find nothing of interest."
  End verb.
End add.
