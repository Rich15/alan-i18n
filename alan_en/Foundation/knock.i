﻿-- "knock.i"

Syntax
  knock_on = knock 'on' (obj)
    Where obj IsA thing
      else "You can't knock on that!"

Add to every thing
  Verb knock_on
    Does
      "You knock on" say the obj. "."
  End verb.
End add.


Syntax
  knock = knock.

Verb knock
  Does
    "You need to specify what you want to knock on."
End verb.
