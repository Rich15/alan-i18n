-- "lanciare.i" -> throw.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


-- Synonyms
--   dump, cast = throw.

-- @NOTE: sinonimi: scaglia, tira?
--        Però 'tira' è ambiguo e si sovrappone a tira (=pull).


Syntax
  lanciare = lancia (ogg) *
    Where ogg IsA object
      else "You can only throw objects."

Add to every object
  Verb lanciare
    Check ogg in hero
      else "You haven't got that!"
    Does
      "You can't throw very far,"
      say the ogg. "ends up on the ground."
      Locate ogg here.
  End verb.
End add.

Syntax
  lanciare_contro = lancia (ogg1) contro (ogg2)
    Where ogg1 IsA object
      else "You can only throw objects."
    And ogg2 IsA thing
      else "You can't throw anything at that."

  lanciare_a = lancia (ogg1) a (ogg2)
    Where ogg1 IsA object
      else "You can't be serious."
    And ogg2 IsA thing
      else "You can't throw anything to that."

Add to every object
  Verb lanciare_contro, lanciare_a
    When ogg1
      Check ogg1 in hero
        else "You haven't got that!"
      And ogg2 not in hero
        else
          "You are carrying" say the ogg2. "."
      And ogg2 <> hero
        else
          "You can't throw" say the ogg1.
          "at yourself."
      Does
        Say the ogg1. "bounces harmlessly off"
        say the ogg2. "and ends up on the ground."
        Locate ogg1 here.
  End verb.
End add.


Syntax
  lanciare_in = lancia (ogg1) 'in' (ogg2)
    Where ogg1 IsA object
      else "Don't be silly."
    And ogg2 IsA container
      else "You can't throw anything in that."

Add to every object
  Verb lanciare_in
    When ogg1
      Check ogg1 in hero
        else "You haven't got that!"
      And ogg1 <> ogg2
        else "Now, that would be a good trick!"
      And ogg2 <> hero
        else
          "You can't put" say the ogg1. "into yourself!"
      Does
        Locate ogg1 in ogg2.
        "Done."
  End verb.
End add.
