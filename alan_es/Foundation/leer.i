﻿-- "leer.i" <-- "read.i"

Add to every object
  Is not leible.
End add to object.

Synonyms
  lee, leo = leer.

Syntax
  leer = leer (obj)
    Where obj IsA object
      else "Eso no se puede leer."

Add to every object
  Verb leer
    Check obj is leible
      else "No hay nada escrito en" say the obj. "."
    Does
      "Lees" say the obj. "."
    End verb.
End add to.
