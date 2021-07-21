-- "mangiare.i" -> eat.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every object
Is
  Not commestibile.
  Not potabile.
End add.

Syntax
  mangiare = mangia (ogg)
    Where ogg IsA object
      else "Non puoi mangiare" say an ogg. "!"

  bere = bevi (ogg)
    Where ogg IsA object
      else "Non puoi bere" say an ogg. "!"

Add to every object
  Verb mangiare
    Check ogg is commestibile
      else "$+1 non è commestibile!"
    Does
      Locate ogg at limbo.
      "Mangi" say the ogg. "."
  End verb.

  Verb bere
    Check ogg is potabile
      else "$+1 non è potabile."
    Does
      Locate ogg at limbo.
      "Bevi" say the ogg. "."
  End verb.
End add.
