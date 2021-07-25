-- "bloccare.i" -> lock.i

Add to every object
  Is
    Not bloccabile.
    bloccato.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX blocca = blocca (ogg)
--    SYNONYMS serra = blocca.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Synonyms serra = blocca.

Syntax
  bloccare = blocca (ogg)
    Where ogg IsA object
      else "You can't lock that." -- @TRANSLATE!

Add to every object
  Verb bloccare
    Check ogg is bloccabile
      else "You can't lock that!" -- @TRANSLATE!
    And ogg is not bloccato
      else "It's already locked." -- @TRANSLATE!
    Does
      Make ogg bloccato. Say the ogg. "is now locked." -- @TRANSLATE!
  End verb.
End add.


Syntax
  bloccare_con = blocca (ogg) con (chiave)
    Where ogg IsA object
      else "You can't lock that." -- @TRANSLATE!
    And chiave IsA object
      else "You can't lock anything with that." -- @TRANSLATE!

Add to every Object
  Verb bloccare_con
    When ogg
      Check ogg is bloccabile
        else "You can't lock that!" -- @TRANSLATE!
      And ogg is not bloccato
        else "It's already locked." -- @TRANSLATE!
      And chiave in hero
        else "You don't have" say the chiave. "." -- @TRANSLATE!
      Does
        Make ogg bloccato.
        Say the ogg. "is now locked." -- @TRANSLATE!
  End verb.
End add.


Syntax
  sbloccare = sblocca (ogg)
    Where ogg IsA object
      else "You can't lock that." -- @TRANSLATE!

Add to every object
  Verb sbloccare
    Check ogg is bloccabile
      else "You can't unlock that!" -- @TRANSLATE!
    And ogg is bloccato
      else "It's already unlocked." -- @TRANSLATE!
    Does
      Make ogg not bloccato.
      Say the ogg. "is now unlocked." -- @TRANSLATE!
  End verb.
End add.


Syntax
  sbloccare_con = sblocca (ogg) con (chiave)
    Where ogg IsA object
      else "You can't lock that." -- @TRANSLATE!
    And chiave IsA object
      else "You can't lock anything with that." -- @TRANSLATE!

Add to every object
  Verb sbloccare_con
    When ogg
      Check ogg is bloccabile
        else "You can't unlock that!" -- @TRANSLATE!
      And ogg is bloccato
        else "It's already unlocked." -- @TRANSLATE!
      And chiave in hero
        else "You don't have" say the chiave. "." -- @TRANSLATE!
      Does
        Make ogg not bloccato.
        Say the ogg. "is now unlocked." -- @TRANSLATE!
  End verb.
End add.
