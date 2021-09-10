-- "esaminare.i" -> examine.i

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
      else "You can't examine that!" -- @TRANSLATE!
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
      else "You can't look inside that." -- @TRANSLATE!
    And ogg IsA container
      else "You can't look inside that." -- @TRANSLATE!

Add to every object
  Verb guardare_dentro
    Check ogg is esaminabile
      else "Non è possibile guardare"
           say ogg:prep_IN. say the ogg. "."
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
      else "You can't search that!" -- @TRANSLATE!

Add to every object
  Verb ispezionare
    Check ogg is ispezionabile
      else "Non è possibile ispezionare" say the ogg. "."
    Does
      "L'ispezione non ha rivelato nulla di interessante."
  End verb.
End add.
