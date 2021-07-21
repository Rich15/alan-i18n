-- "indossare.i" -> wear.i
-- library version 0.4.1

-- 0.4.1 - converted to ALANv3


Add to every object
  Is not indossabile.
End add.


Syntax
  wear = wear (ogg)
    Where ogg IsA object
      else "You can't wear that."
  wear = put (ogg) 'on'.
  wear = put 'on' (ogg).

Add to every object
  Verb wear
    Check ogg is indossabile
      else "You can't wear" say the ogg. "."
    And ogg not in worn
      else "You are already wearing" say the ogg. "."
    And ogg is prendibile
      else "You can't pick" say the ogg. "up."
    Does
      If ogg not in hero then
        Locate ogg in hero.
        "(You pick" say the ogg. "up.)$n"
      End if.
      Locate ogg in worn.
      "You put on" say the ogg. "."
  End verb.
End add.


Syntax
  'remove' = 'remove' (ogg)
    Where ogg IsA object
      else "You can't remove that."
  'remove' = take (ogg) off.
  'remove' = take off (ogg).

Add to every object
  Verb 'remove'
    Check ogg in worn
      else "You are not wearing" say the ogg. "."
    Does
      Locate ogg in hero.
      "You take off" say the ogg. "."
  End verb.
End add.


Syntax undress = undress.

Add to every object
  Verb undress
    Does
      If Count in worn, IsA thing > 0 then
        Empty worn in hero.
        "You remove all the items you where wearing."
      else
        "You're not wearing anything you can remove."
      End if.
  End verb.
End add.
