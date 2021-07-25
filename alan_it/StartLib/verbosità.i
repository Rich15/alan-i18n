-- "verbosità.i" -> brief.i

--
-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode.
--

Syntax
  verbose = verbose. -- @TRANSLATE!

Verb verbose
  Does
    Visits 0.
    "Verbose mode is now on." -- @TRANSLATE!
End verb.


Syntax
  brief = brief. -- @TRANSLATE!

Verb brief
  Does
    Visits 1000. -- @TRANSLATE!
    "Brief mode is now on. Location descriptions will only be shown
     the first time you visit."
End verb.
