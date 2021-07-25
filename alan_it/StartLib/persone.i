-- "persone.i" -> people.i


-- Classi per le persone

Every persona IsA actor
  Has not nome_proprio. -- Se ha nome proprio si sopprime l'aticolo.
  Description
    -- @TODO: Rivedere testo...
    If this has not nome_proprio then
      -- "There is" say an this. "here." @DELME
      "Qui"
      If this is not plurale
        Then "c'è"
        Else "ci sono"
      End if.
      Say an this. "."
    else
      -- Say this. "is here."
      Say this.
      If this is not plurale
        Then "è"
        Else "sono"
      End if. "qui."
    End if.
End every.

Every maschio IsA persona
  Is not femminile.
  Has articolo "il".
  Pronoun lui
End every.

Every femmina IsA persona
  Is femminile.
  Has articolo "la".
  Pronoun lei
End every.
