-- "persona.i" <-- "people.i"

-- Clases para personas

Every persona IsA actor
  Is not named.       -- Si tiene nombre propio
  Description
    If this is not named then
      "Hay" say an this. "aqu�."
    else
      Say this. "est� aqu�."
    End if.
End every persona.

Every macho IsA persona
  Pronoun him.
End every macho.

Every hembra IsA persona
  Pronoun her.
End every hembra.
