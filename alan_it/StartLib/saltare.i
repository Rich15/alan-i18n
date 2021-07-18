-- "saltare.i" -> "jump.i"
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Syntax
  saltare_su = salta su (ogg)
    Where ogg IsA thing
      else "Non puoi saltare" say ogg:prep_SU. say the ogg. "!"

Add to every thing
  Verb saltare_su
    Does
      "You jump on" say the ogg. "."
      "Salti" say ogg:prep_SU. say the ogg. "."
  End verb.
End add.


Syntax
  saltare = salta.

Verb saltare
  Does
    "Salti sul posto, senza ottenere nulla."
End verb.
