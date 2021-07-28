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
--        di 'prendi' sia una buona idea, perch� l'utente potrebbe creare verbi
--        in cui i termini non sarebbero intercambiabili (e.s. "prendi tempo",
--        "raccogli la sfida", ecc.).

-- @NOTE: Quanto ad 'afferra', non sempre collima con 'prendi', e.s. "afferra
--        la fune", dove il senso non � di impossessarsene ma di trattenere.

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
      else "Possiedi gi�" say the ogg. "," say ogg:articolo.
           "stai indossando."
    And ogg not in hero
      else "Possiedi gi�" say the ogg. "."
    And peso of ogg <=50
      else say the ogg. "pesa"
           If ogg is plurale
             then "$$no"
           End if. "troppo."
    Does
      Locate ogg in hero.
      "Pres$$" say ogg:vocale. "."
  End verb.
End add.


-- i6: lascia, lancia, abbandona, posa, metti gi�
-- Synonyms
--   discard = drop.

Syntax
  lasciare = lascia (ogg)*.
  lasciare = abbandona (ogg)*.
  lasciare = metti gi� (ogg)*.
  lasciare = posa (ogg)*.


Add to every object
  Verb lasciare
    -- @NOTE: But they might still be worn!
    Check ogg in hero
      else "Non possiedi" say the ogg. "."
    Does
      Locate ogg here.
      "Fatto."
  End verb.
End add.


Syntax
  prendere_da = prendi (ogg) da (detentore)
    Where ogg IsA object
      else "You can only take objects." -- @TRANSLATE!
    And detentore IsA thing
      else "You can't take things from that!" -- @TRANSLATE!
    And detentore IsA container
      else "You can't take things from that!" -- @TRANSLATE!
  prendere_da = prendi  (ogg)* dai (detentore).
  prendere_da = rimuovi (ogg)* da  (detentore).
  prendere_da = rimuovi (ogg)* dai (detentore).
  prendere_da = togli   (ogg)* da  (detentore).
  prendere_da = togli   (ogg)* dai (detentore).
  ------------------------------------------------------------------------------
  -- NOTA: Le sintassi alternative per la preposizione articolata 'dai' sono
  --       necessarie perch� 'dai' non pu� essere sinonimo di 'da' poich�
  --       confliggerebbe con il verbo "dai".
  ------------------------------------------------------------------------------

Add to every object
  Verb prendere_da
    When ogg
      Check ogg not in hero
        else "Possiedi gi�" say the ogg. "."
      And ogg in detentore
        else say the ogg. "is not there." -- @TRANSLATE!
      Does
        If detentore=hero then
          -- @CHECKME: Would this ever be executed???
          "You don't need to take things from yourself!" -- @TRANSLATE!
        else
          Locate ogg in hero.
          "Fatto, hai preso" say the ogg. "."
        End if.
  End verb.
End add.
