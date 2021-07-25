-- "prendere.i" -> take.i

Add to every thing
  Is inanimato.
End add.

Add to every object
  Is prendibile.
End add.

Add to every actor
  Is not inanimato.
End add.


-- Synonyms
--   get, carry, obtain, grab, steal, confiscate, hold = take.

-- @NOTE: Non sono convinto che definire 'raccogli' e 'trasporta' come sinonimi
--        di 'prendi' sia una buona idea, perché l'utente potrebbe creare verbi
--        in cui i termini non sarebbero intercambiabili (e.s. "prendi tempo",
--        "raccogli la sfida", ecc.).

-- @NOTE: Quanto ad 'afferra', non sempre collima con 'prendi', e.s. "afferra
--        la fune", dove il senso non è di impossessarsene ma di trattenere.

Syntax
  prendere = prendi (ogg) *
    Where ogg IsA object
      else "You can't take that with you!" -- @TRANSLATE!
  prendere = raccogli (ogg).
  prendere = afferra (ogg).   --> @TODO: Eliminare?
  prendere = trasporta (ogg). --> @TODO: Eliminare?

Add to every object
  Verb prendere
    Check ogg is prendibile
      else "You can't take that!" -- @TRANSLATE!
    And ogg not in worn
      else "Possiedi già" say the ogg. "," say ogg:articolo.
           "stai indossando."
    And ogg not in hero
      else "Possiedi già" say the ogg. "."
    And peso of ogg <=50
      else
        Say the ogg. "pesa"
        If ogg is plurale
          then "$$no"
        End if. "troppo."
    Does
      Locate ogg in hero.
      "Pres$$" say ogg:vocale. "."
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
      else "You aren't carrying that." -- @TRANSLATE!
    Does
      Locate ogg here.
      "Dropped." -- @TRANSLATE!
  End verb.
End add.


Syntax
  take_from = 'take' (ogg) 'from' (holder)
    Where ogg IsA object
      else "You can only take objects." -- @TRANSLATE!
    And holder IsA thing
      else "You can't take things from that!" -- @TRANSLATE!
    And holder IsA container
      else "You can't take things from that!" -- @TRANSLATE!

Add to every object
  Verb take_from
    When ogg
      Check ogg not in hero
        else "You already have" say the ogg. "." -- @TRANSLATE!
      And ogg in holder
        else say the ogg. "is not there." -- @TRANSLATE!
      Does
        If holder=hero then
          "You don't need to take things from yourself!" -- @TRANSLATE!
        else
          Locate ogg in hero.
          "You take" say the ogg. "." -- @TRANSLATE!
        End if.
  End verb.
End add.
