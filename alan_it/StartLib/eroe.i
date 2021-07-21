-- "eroe.i" --> "hero.i"
-- Library version 0.6.1dev


Synonyms
  me = hero.

The hero IsA actor
  Container
    Limits
      Count 10 then
        "Non puoi trasportare più nulla. Dovresti prima lasciare qualcosa."
      peso 50 then
        "Non puoi trasportare più nulla. Dovresti prima lasciare qualcosa."
    Header
      "Stai trasportando"
    else
      "Sei a mani vuote."
End the.
