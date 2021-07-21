-- "mettere.i" -> put.i
-- Library version 0.5.2

-- 0.4.1 - converted to ALANv3


Synonyms
  place = put.

Syntax
  put = put (ogg) *
    Where ogg IsA object
      else "You can't put that anywhere."

Add to every object
  Verb put
    Check ogg in hero
      else "You haven't got that."
    Does
      Locate ogg here.
      "Dropped."
  End verb.
End add.


Syntax
  put_in = put (ogg1) 'in' (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere."
    And ogg2 IsA container
      else "You can't put anything in that."

Add to every object
  Verb put_in
    When ogg1
      Check ogg1 in hero
        else
          "You haven't got" say the ogg1. "."
      And ogg1 <> ogg2
        else "You can't put something into itself!"
      And ogg2 <> hero
        else "You can't put" say ogg1. "into yourself!"
      Does
        Locate ogg1 in ogg2.
        "Done."
    End verb.
End add.


Syntax
  put_near = put (ogg1) 'near' (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere."
    And ogg2 IsA thing
      else "You can't put anything near that."

  put_behind = put (ogg1) behind (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere."
    And ogg2 IsA thing
      else "You can't put anything behind that."

  put_on = put (ogg1) 'on' (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere."
    And ogg2 IsA thing
      else "You can't put anything on that."

  put_under = put (ogg1) under (ogg2)
    Where ogg1 IsA object
      else "You can't put that anywhere."
    And ogg2 IsA thing
      else "You can't put anything under that."

Add to every object
  Verb put_near, put_behind, put_on, put_under
    When ogg1
      Check ogg1 in hero
        else "You haven't got" say the ogg1. "."
      And ogg2 not in hero
        else
          "You are carrying" say the ogg2.
          ". If you want to take" say the ogg1. "just say so."
      Does
        "Naaah. I'd rather just put" say the ogg1. "down here."
        Locate ogg1 at ogg2.
  End verb.
End add.
