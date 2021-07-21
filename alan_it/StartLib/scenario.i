-- "scenario.i" -> scenery.i
-- Library version 0.5.0


Every scenery IsA object
  Is
    Not ispezionabile.
    Not takeable.
    Not pushable.
    Not touchable.

  Verb esaminare, take
    Does only
      "That's only scenery."
  End verb.
End every.
