﻿-- "give.i"

Syntax
  give = 'give' (obj) 'to' (recip)
    Where obj IsA object
      else "You can only give away objects."
    And recip IsA container
      else "You can't give things to that!"
  give = give (recip) (obj).

Add to every object
  Verb give
    When obj
      Check obj in hero
        else "You don't have" say the obj. "."
    Does
      If recip=hero then
        "You already have" say the obj. "!"
      else
        "You give" say the obj. "to" say the recip. "."
        Locate obj in recip.
        -- In case item was being worn:
        Set wearer of obj to nobody.
        Make obj not worn.
      End if.
  End verb.
End add.
