-- "ascoltare.i" -> listen.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Syntax
  ascoltare0 = ascolta.

Verb ascoltare0
  Does
    "Non odi niente di particolare."

End verb.

Syntax
  ascoltare = ascolta (obj)
    Where obj IsA thing
      else "You can't listen to that!" -- @TRANSLATE

Add to every thing
  Verb ascoltare
    Does
      "Ascolti" say the obj. "."
  End verb.
End add.

