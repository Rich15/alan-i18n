﻿-- "listen.i"

Syntax
  listen_to = listen 'to' (obj)
    Where obj IsA thing
      else "You can't listen to that!"

Add to every thing
  Verb listen_to
    Does
      "You listen to" say the obj. "."
  End verb.
End add.


Syntax
  listen = listen.

Verb listen
  Does
    "You hear nothing unusual."
End verb.
