-- "scenario.i" -> scenery.i
-- Library version 0.5.0


Every scenery IsA object
  Is
    Not ispezionabile.
    Not prendibile.
    Not spingibile.
    Not toccabile.

  Verb esaminare, prendere
    Does only
      "That's only scenery."
  End verb.
End every.
