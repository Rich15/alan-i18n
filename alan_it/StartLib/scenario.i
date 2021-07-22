-- "scenario.i" -> scenery.i
-- Library version 0.5.0


Every scenery IsA object -- @TRANSLATE CLASS!
  Is
    Not ispezionabile.
    Not prendibile.
    Not spingibile.
    Not toccabile.

  Verb esaminare, prendere
    Does only
      Say the ogg. "non"
      If ogg is not plurale
        then "è importante"
        else "sono importanti"
      End if.
      "ai fini del gioco."
  End verb.
End every.
