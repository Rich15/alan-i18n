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
      else "You can't wear" say the ogg. "." -- @TRANSLATE!
    And ogg not in worn
      else "You are already wearing" say the ogg. "." -- @TRANSLATE!
    And ogg is prendibile
      else "You can't pick" say the ogg. "up." -- @TRANSLATE!
    Does
      If ogg not in hero then
        Locate ogg in hero.
        "(You pick" say the ogg. "up.)$n" -- @TRANSLATE!
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
      "You take off" say the ogg. "." -- @TRANSLATE!
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
        "You remove all the items you where wearing." -- @TRANSLATE!
      else
        "You're not wearing anything you can remove." -- @TRANSLATE!
      End if.
  End verb.
End add.
