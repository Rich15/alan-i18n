-- "accendere.i" -> turn.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every object
  Is
    Not 'on'.
    Not switchable.
End add.


Syntax
  turn_on1 = turn 'on' (ogg)
    Where ogg IsA object
      else "You can't turn that on."

  turn_on2 = turn (ogg) 'on'
    Where ogg IsA object
      else "You can't turn that on."

  switch_on1 = switch 'on' (ogg)
    Where ogg IsA object
      else "You can't switch that on."

  switch_on2 = switch (ogg) 'on'
    Where ogg IsA object
      else "You can't switch that on."


Add to every object
  Verb turn_on1, turn_on2, switch_on1, switch_on2
    Check ogg is switchable
      else "You can't turn that on."
    And ogg is not 'on'
      else "It's already on."
    Does
      Make ogg 'on'.
      "You turn on" say the ogg. "."
  End verb.
End add.


Syntax
  turn_off1 = turn off (ogg)
    Where ogg IsA object
      else "You can't turn that off."

  turn_off2 = turn (ogg) off
    Where ogg IsA object
      else "You can't turn that off."

  switch_off1 = switch off (ogg)
    Where ogg IsA object
      else "You can't switch that off."

  switch_off2 = switch (ogg) off
    Where ogg IsA object
      else "You can't switch that off."


Add to every object
  Verb turn_off1, turn_off2, switch_off1, switch_off2
    Check ogg is switchable
      else "You can't turn that off."
    And ogg is 'on'
      else "It's already off."
    Does
      Make ogg not 'on'.
      "You turn off" say the ogg. "."
  End verb.
End add.
