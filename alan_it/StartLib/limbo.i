-- "limbo.i" ("nowhere.i")

-- Il `limbo` � un luogo speciale la cui definizione ha duplice scopo:
--
-- 1. Mettere a disposizione un non-luogo in cui poter parcheggiare tutte le
--    istanze che si vogliono fare sparire dal gioco.
-- 2. Definire le direzioni di spostamento predefinite.
--
-- Siccome Alan non consente la creazione o la distruzione dinamica di instanze
-- durante il gioco, l'unico modo per poter far sparire di scena un'instanza �
-- collocarla in un luogo a cui il giocatore non potr� aver accesso -- ossia,
-- il limbo.
--
-- Quanto alla definizione delle direzioni predefinite, Alan non dispone di una
-- classe speciale per le direzioni, n� definisce alcuna direzione predefinta;
-- Alan estrae la lista delle direzioni dalle varie occorrenze di `EXIT` nel
-- sorgente dell'avventura. Per questo motivo, la libreria definisce le
-- direzioni standard sull'istanza di luogo `limbo`:

The limbo IsA location.
  Exit  nord,
        sud,
        est,
        ovest,
        nordest,
        sudest,
        nordovest,
        sudovest,
        su,
        gi�,
       'in',  --> per "dentro" (sinonimo??) @TODO: Remove?
        fuori -- @TODO: Remove?
    to limbo.
End the limbo.

--| Oltre alle direzioni predefinite sul `limbo`, la libreria definisce anche
--| dei sinonimi comuni per esse, che includono sintassi alternative e comandi
--| brevi:


Synonyms
    nest    = nordest.
    sest    = sudest.
    novest  = nordovest.
    sovest  = sudovest.
    sopra   = su.
    giu     = gi�.


--| [FIX ME: 'in']
--| ========================================================================
--| (1) Dovrei implementare `in` come sinomimo di `dentro`?
--| (2) Dovrei togliere `in` dalle direzioni predefinite?
--|
--| 1) In molti verbi i due termini sono equivalenti -- "guarda nella/dentro la
--|    scatola", "entra in/dentro casa". Ma per altri verbi non � cosi, e.s.
--|
--|      "guarda in basso"          !=  "guarda dentro basso"
--|      "scrivi in corsivo/calce"  !=  "scrivi dentro corsivo/calce"
--|    Forse conviene lasciare all'autore il compito di definire le sintassi
--|    alternative per quei verbi che le prevedono.
--| 2) L'uso di "in" come direzione non mi convince; semmai "dentro" sarebbe
--|    accettabile, ma anche in questo case "entra" sarebbe meglio.
--| ========================================================================

--| [FIX ME: 'fuori']
--| ========================================================================
--| Forse dovrei rimuovere `fuori` dalle direzioni di base. L'uso del verbo
--| "esci" sarebbe pu� appropriato, o chiamare una direzione "esci" (se non
--| confligge con l'omonimo verbo -- da verificare!).
--| ========================================================================


--| [NOTE]
--| ========================================================================
--| La ragione per cui non � stato possibile definire le direzioni brevi
--| classiche `n`, `e`, `s`, `o`, `ne`, `no`, `se`, `so` � dovuto al fatto che
--| alcune di esse avrebbero conflitto con altri identificativi definiti
--| altrove:
--|
--| `e` -> `est`        :: ignorato dal parsing dei comandi poich� `e` � una
--|                        "noise word".
--| `a` -> `su`         :: causerebbe conflitti con la preposizione `a`.
--| `no` -> `nordovest` :: in conflitto con la sintassi del verbo `rispondi_No`.
--| `sotto` -> `gi�`    :: in conflitto con la sintassi "`guarda sotto`".
--|
--| Ragion per cui si � preferito adottare un sistema di abbreviazioni coerente,
--| limitandone l'uso alle direzioni composite.
--| ========================================================================
