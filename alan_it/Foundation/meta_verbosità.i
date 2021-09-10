-- "verbosit�.i" -> brief.i

--
-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode.
--

Syntax  modalit�_lunga = modalit� lunga.
        modalit�_lunga = verbose.

Meta verb modalit�_lunga
  Does
    Visits 0.
    "Il gioco � ora in modalit�" STYLE EMPHASIZED.
    "lunga" STYLE NORMAL. ", le descrizioni dei luoghi
     saranno mostrate sempre (anche se gi� visitati)."
End verb.


Syntax  modalit�_breve = modalit� breve.
        modalit�_breve = modalit� corta.
        modalit�_breve = brief.

Meta verb modalit�_breve
  Does
    Visits 1000.
    "Il gioco � ora in modalit�" STYLE EMPHASIZED.
    "breve" STYLE NORMAL. ", le descrizioni dei
     luoghi gi� visitati non saranno pi� mostrate."
End verb.
