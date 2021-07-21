-- "prendere.i" -> take.i
-- Library version 0.5.0

-- 0.6.0 - removed guard for taking things from animate containers since
--         Alan v3.0.29 supports Extract clause on containers
-- 0.5.0 - cleaned up formatting, made use of "." not making a leading space
-- 0.4.1 - converted to ALANv3


Add to every thing
  Is inanimato.
End add.

Add to every object
  Is prendibile.
End add.

Add to every actor
  Is not inanimato.
End add.


Synonyms
  get, carry, obtain, grab, steal, confiscate, hold = take.


Syntax
  prendere = prendi (ogg) *
    Where ogg IsA object
      else "You can't take that with you!"
  prendere = raccogli (ogg).
  prendere = afferra (ogg).   --> @TODO: Eliminare?
  prendere = trasporta (ogg). --> @TODO: Eliminare?


Syntax
  pick_up1 = pick up (ogg)*
    Where ogg IsA object
      else "You can't take that with you!"

  pick_up2 = pick (ogg)* up
    Where ogg IsA object
      else "You can't take that with you!"

Add to every object
  Verb prendere, pick_up1, pick_up2
    Check ogg is prendibile
      else "You can't take that!"
    And ogg not in worn
      else "You've already got that - you're wearing that."
    And ogg not in hero
      else "You've already got that."
    And peso Of ogg <=50
      else "That is too heavy to lift."
    Does
      Locate ogg in hero.
      "Taken."
  End verb.
End add.


Synonyms
  discard = drop.

Syntax
  drop = drop (ogg)*.

Syntax
  put_down1 = put (ogg) * down.

Syntax
  put_down2 = put down (ogg)*.

Add to every object
  Verb drop, put_down1, put_down2
    Check ogg in hero
      else "You aren't carrying that."
    Does
      Locate ogg here.
      "Dropped."
  End verb.
End add.


Syntax
  take_from = 'take' (ogg) 'from' (holder)
    Where ogg IsA object
      else "You can only take objects."
    And holder IsA thing
      else "You can't take things from that!"
    And holder IsA container
      else "You can't take things from that!"

Add to every object
  Verb take_from
    When ogg
      Check ogg not in hero
        else "You already have" say the ogg. "."
      And ogg in holder
        else Say the ogg. "is not there."
      Does
        If holder=hero then
          "You don't need to take things from yourself!"
        else
          Locate ogg in hero.
          "You take" say the ogg. "."
        End if.
  End verb.
End add.
