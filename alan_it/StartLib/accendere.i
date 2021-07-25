-- "accendere.i" -> turn.i

Add to every object
  Is
    Not acceso.
    Not accendibile.
End add.


Syntax
  accendere = accendi (ogg)
    Where ogg IsA object
      else "You can't turn that on." -- @TRANSLATE!

Add to every object
  Verb accendere
    Check ogg is accendibile
      else "You can't turn that on." -- @TRANSLATE!
    And ogg is not acceso
      else "It's already on." -- @TRANSLATE!
    Does
      Make ogg acceso.
      "You turn on" say the ogg. "." -- @TRANSLATE!
  End verb.
End add.


Syntax
  spegnere = spegni (ogg)
    Where ogg IsA object
      else "You can't turn that off." -- @TRANSLATE!

Add to every object
  Verb spegnere
    Check ogg is accendibile
      else "You can't turn that off." -- @TRANSLATE!
    And ogg is acceso
      else "It's already off." -- @TRANSLATE!
    Does
      Make ogg not acceso.
      "You turn off" say the ogg. "." -- @TRANSLATE!
  End verb.
End add.
