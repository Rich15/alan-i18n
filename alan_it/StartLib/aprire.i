-- "aprire.i" -> open.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3
-- 0.5.0 - Changed attributes around:
--    'open' indicates state
--    'openable' indicates if it is possible to open
--    'closeable' indicates if it is possible to close


Syntax
  aprire = apri (ogg)
    Where ogg IsA object
      else "You can't open that."

Add to every object
  Is
    Not apribile.
    Not aperto.

  Verb aprire
    Check ogg is apribile
      else "Non è possibile aprirl$$" Say ogg:vocale. "."
    And ogg is not aperto
      else
        Say the ogg.
        If ogg is not plurale
          then "è"
          else "sono"
        End if.
        "già apert$$" Say ogg:vocale. "."
    Does
      Make ogg aperto.
      "Fatto. Ora" say the ogg.
      If ogg is not plurale
        then "è"
        else "sono"
      End if.
      "apert$$" Say ogg:vocale. "."
  End verb.

End add.


Syntax
  aprire_con = open (ogg1) con (ogg2)
    Where ogg1 IsA object
      else "You can't open that."
    And ogg2 IsA object
      else "You can't open anything with that."

Add to every object
  Verb aprire_con
    When ogg1
      Check ogg2 in hero
        else "You don't have" say the ogg2. "."
      Does
        "You can't open" say the ogg1. "with" say the ogg2. "."
  End verb.
End add.


Synonyms
  shut = close.

Syntax
  close = close (ogg)
    Where ogg IsA object
      else "You can only close objects."

Add to every object
  Is not chiudibile.

  Verb close
    Check ogg is chiudibile
      else "You can't close that."
    And ogg is aperto
      else "It is not open."
     Does
       Make ogg not aperto.
       Say the ogg. "is now closed."
    End verb.

End add.


Syntax
  close_with = close (ogg1) 'with' (ogg2)
    Where ogg1 IsA object
      else "You can't close that."
    And ogg2 IsA object
      else "You can't close anything with that."

Add to every object
  Verb close_with
    When ogg1
      Check ogg2 in hero
        else "You don't have" say the ogg2. "."
      And ogg1 Is apribile
        else "You can't close" say the ogg1. "."
      Does -- To be overridden by DOES ONLY where appropriate...
        "You can't close" say the ogg1. "with" say the ogg2. "."
  End verb.
End add.
