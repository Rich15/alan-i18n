-- "indossare.i" -> wear.i

Add to every object
  Is not indossabile.
End add.

-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX  indossa = indossa (ogg)
--            indossa = mettiti (ogg).
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  indossare = indossa (ogg)
    Where ogg IsA object
      else "You can't wear that." -- @TRANSLATE!
  indossare = mettiti (ogg).

Add to every object
  Verb indossare
    Check ogg is indossabile
      else say the ogg. "non"
           If ogg is not plurale
             then "è"
             else "sono"
           End if. "indossabil$$"
           If ogg is not plurale
             then "e"
             else "i"
           End if. "."


    And ogg not in worn
      else "Indossi già" say the ogg. "."
    And ogg is prendibile
      else "You can't pick" say the ogg. "up." -- @TRANSLATE!
    Does
      If ogg not in hero then
        Locate ogg in hero.
        "(Prima prendi" say the ogg. "$$.)$n"
      End if.
      Locate ogg in worn.
      "Fatto. Ora indossi" say the ogg. "."
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX  togliti = togliti (ogg)
--            togliti = levati (ogg).
--            togliti = sfilati (ogg).
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  togliersi = togliti (ogg)
    -- @NOTE: What else could it be if it's IN HERO?
    Where ogg IsA object
      else "You can't remove that." -- @TRANSLATE!
  togliersi = levati (ogg).
  togliersi = sfilati (ogg).

Add to every object
  Verb togliersi
    Check ogg in worn
      else "You are not wearing" say the ogg. "." -- @TRANSLATE!
    Does
      Locate ogg in hero.
      "Fatto. Ti sei sfilato" say the ogg. "."
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX spogliati = spogliati.
--    SYNONYMS svestiti = spogliati.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Synonyms svestiti = spogliati.

Syntax spogliarsi = spogliati.

Add to every object
  Verb spogliarsi
    Does
      If Count in worn, IsA thing > 0 then
        Empty worn in hero.
        "Fatto, hai rimosso tutto ciò che indossavi."
      else
        "Ma non stai indossando nulla!"
      End if.
  End verb.
End add.
