﻿-- "llevar.i" <-- "wear.i"

Add to every object
  Is not ponible.
     not puesto.
  Has portador nadie. -- dummy actor = unworn state. (see persona.i)
End add to object.

Synonyms
  lleva, llevo, ponerme, ponerse, ponte = llevar.
Syntax
  llevar = llevar (obj)
    Where obj IsA object
      else "No puedes llevar eso."
  llevar = llevar el (obj).

Add to every object
  Verb llevar
    Check obj is ponible
      else "No puedes llevar" say the obj. "."
    And portador of obj <> hero
      else "You are already wearing" say the obj. "." -- @TRANSLATE!
 -- And obj not in llevado
 --   else "Ya llevas" say the obj. "."
    And obj is tomable
      else "No puedes tomar" say the obj.
    And obj in hero
      else "No llevas" say the obj. -- @CHECK TRANSLATION!
    Does
--    If obj not in hero then
--      Locate obj in hero.
--      "(tomas" say the obj. ".)$n"
--    End if.
      Set portador of obj to hero.
      Make obj puesto.
      "Te pones" say the obj. "."
    End verb.
End add to.

Synonyms
  quita, quito, quitarme, quitarse, quitate = quitar.

Syntax
  quitar = quitar (obj)
    Where obj IsA object
      else "No te puedes quitar eso."
  quitar = quitar el (obj).

Add to every object
  Verb quitar
    Check portador of obj = hero
      else "No llevas" say the obj. "."
    Does
      Set portador of obj to nadie.
      Make obj not puesto.
      "Te quitas" say the obj. "."
    End verb.
End add to.


Synonyms
  desnudo, desnuda, desnudarme, desnudate, desnudarse = desnudar.

Syntax desnudar = desnudar.

Verb desnudar
  Does
    If count in hero, IsA object, is puesto > 0 then
      -- @TRANSLATE 'worn_item' ID
      For each worn_item in hero, IsA object, is puesto do
        Set portador of worn_item to nadie.
        Make worn_item not puesto.
    End for.
      "Te quitas todo lo que llevabas puesto."
    else
      "No llevas nada que puedas quitarte."
    End if.
  End verb.
