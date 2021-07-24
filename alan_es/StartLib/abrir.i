-- "abrir.i" <-- "open.i"

Add to every object
  Is
    Not cerrojable.
    cerrojo.
End add to.

synonyms
  abro, abri, abre = abrir.

Syntax
  abrir = abrir (obj)
    Where obj IsA object
      else "Eso no lo puedes abrir."
  abrir = abrir el (obj).

Add to every object
  Is
    Not abrible.
    Not abierto.

  Verb abrir
    Check obj is abrible
      else "�No puedes abrir eso!"
    And obj is not abierto
      else "Ya est�" say term_n of this.
           " abiert" say term_s of this.
    Does
      Make obj abierto.
      "Abres " say the obj. "."
  End verb.
End add to.


Syntax
  abrir_con = abrir (obj) con (key)
    Where obj IsA object
      else "No puedes abrir con llave eso."
    And key IsA object
      else "No puedes abrir nada con eso."
  abrir_con = abrir el (obj) con (key).
  abrir_con = abrir el (obj) con el (key).
  abrir_con = abrir (obj) con el (key).

Add to every object
  Verb abrir_con
    When obj
      Check obj is cerrojable
        else "�Eso no se puede abrir con llave!"
      And obj is not abierto
        else "Ya est� abierto."
      And key in hero
        else "No tienes" say the key. "."
    Does
      Make obj abierto.
      Make obj not cerrojo.
      Say the obj. "ahora est� descerrojado."
    End verb.
End add.

----

Synonyms
  cierro, cierra, cerra = cerrar.

Syntax
  cerrar = cerrar (obj)
    Where obj IsA object
      else "Solo puedes cerrar objetos."

Add to every object
  Is not cerrable.

  Verb cerrar
    Check obj is cerrable
      else "Eso no lo puedes cerrar."
    And obj is abierto
      else "No est�" say term_n of this.
           " abiert" say term_s of this. "."
    Does
      Make obj not abierto.
      Say the obj. "ahora est�" say term_n of this.
      " cerrad" say term_s of this. "."
    End verb.
End add to.


Syntax
  cerrar_con = cerrar (obj) con (key)
    Where obj IsA object
      else "No puedes cerrar con llave eso."
    And key IsA object
      else "No puedes cerrar nada con eso."
  cerrar_con = cerrar (obj) con el (key).
  cerrar_con = cerrar el (obj) con (key).
  cerrar_con = cerrar el (obj) con el (key).

Add to every object
  Verb cerrar_con
    When obj
      Check obj is cerrojable
        else "�No puedes cerrar con llave eso!"
      And obj is not cerrojo
        else "Ya lo est�."
      And key in hero
        else "No tienes" say the key. "."
    Does
      Make obj cerrojo.
      Make obj not abierto.
      Say the obj. " est� ahora cerrado con llave."
    End verb.
End add.
