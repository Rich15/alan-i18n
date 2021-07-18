-- "spingere.i" -> push.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  Is spingibile.
End add.


Syntax
  spingere = push (ogg)
    Where ogg IsA thing
    --else "You can't push that."
      else "You can't push that." -- @TRANSLATE

Add to every object
  Verb spingere
    Check ogg is spingibile
    --else "You can't push that."
      else "You can't push that." -- @TRANSLATE
    Does
      "Spingi" say the ogg. "."
  End verb.
End add.


Syntax
  spingere_con = push (ogg1) con (ogg2)
    Where ogg1 IsA thing
    --else "You can't push that."
      else "You can't push that." -- @TRANSLATE
    And ogg2 IsA object
    --else "You can use only objects to push things with."
      else "You can use only objects to push things with." -- @TRANSLATE

Add to every object
  Verb spingere_con
    When ogg1
      Check ogg1 is spingibile
      --else "You can't push that."
        else "You can't push that."
      Does
      --"Using" say the ogg2. "you push" say the ogg1. "."
        "Servendoti" say ogg2:prep_DI. say the ogg2.
        "spingi" say the ogg1. "."
  End verb.
End add.
