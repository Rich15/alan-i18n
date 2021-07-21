-- "bussare.i" -> knock.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Syntax
  knock_on = knock 'on' (ogg)
    Where ogg IsA thing
      else "You can't knock on that!"

Add to every thing
  Verb knock_on
    Does
      "You knock on" say the ogg. "."
  End verb.
End add.


Syntax
  knock = knock.

Verb knock
  Does
    "You need to specify what you want to knock on."
End verb.
