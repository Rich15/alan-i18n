-- "messages_sv.i" | 2021/07/18 | ALAN 3.0beta7
--==============================================================================
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--------------------------------------------------------------------------------
--
--          A L A N  R U N T I M E   M E S S A G E S   T E M P L A T E
--
--------------------------------------------------------------------------------
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--==============================================================================

-- Anv�nd denna mall f�r att �verrida standardmeddelandena som �r inbyggda i Alan
-- med dina egna anpassade texter. Texterna som finns h�r �r samma som de som
-- finns inbyggda om du v�ljer svenska som spr�k.

-- Du kan finjustera meddelandena genom att l�gga till extra kod i MESSAGE-
-- definitionerna. F�r mer information see Alan-manualens avsnitt
-- "�3.15. MESSAGEs".

-- F�r mer en detaljerad f�rklaring av varje medddelande och hur den anv�nds, se
-- ALAN-manualen "Appendix C.1. Input Response Messages".

--------------------------------------------------------------------------------

MESSAGE

MORE: "<Mera>"

-- =============================================================================

-- BESKRIVNINGAR

-- =============================================================================

--------------------------------------------------------------------------------
-- Spelarens plats
--------------------------------------------------------------------------------

AGAIN: "(igen)"

SEE_START: "Det finns $01"
SEE_COMMA: ", $01"
SEE_AND: "och $01"
SEE_END: "h�r."

--------------------------------------------------------------------------------
-- Beh�llare
--------------------------------------------------------------------------------

CONTAINS: "$+1 inneh�ller"
CONTAINS_COMMA: "$01,"
CONTAINS_AND: "$01 och"
CONTAINS_END: "$01."

IS_EMPTY: "$+1 �r tom."

--------------------------------------------------------------------------------
-- Akt�rers inventarier
--------------------------------------------------------------------------------

CARRIES: "$+1 b�r p�"
EMPTY_HANDED: "$+1 �r tomh�nt."

-- =============================================================================

-- FELAKTIGA KOMMANDON

-- =============================================================================

NO_SUCH: "Jag ser ingen $1 h�r."
NO_WAY: "Du kan inte g� �t det h�llet."
CANT0: "Det g�r inte att g�ra."
IMPOSSIBLE_WITH: "Det g�r inte med $+1."

CAN_NOT_CONTAIN: "$+1 kan inte inneh�lla $+2."
CONTAINMENT_LOOP: "Det �r om�jligt att stoppa $+1 i sig sj�lv."
CONTAINMENT_LOOP2: "Det �r om�jligt att stoppa $+1 i
                    $+2 eftersom $+2 redan �r inuti $+1."

-- =============================================================================

-- PARSNINGSPROBLEM

-- =============================================================================

UNKNOWN_WORD: "Jag k�nner inte till ordet '$1'."
WHAT: "Jag f�rst�r inte."
WHAT_WORD: "Jag vet inte vad du menar med '$1'."
MULTIPLE: "Du kan inte ange flera objekt tillsammans med verbet '$v'."
NOUN: "Du m�ste ange ett substantiv."

--------------------------------------------------------------------------------
-- Felaktig anv�ndning av OCH och UTOM
--------------------------------------------------------------------------------

AFTER_BUT: "Det borde vara minst ett objekt efter '$1'."
BUT_ALL: "Du kan bara anv�nda '$1' efter '$2'."
NOT_MUCH: "Det blir inte s� mycket kvar att $v d�!"

--------------------------------------------------------------------------------
-- Flertydighet
--------------------------------------------------------------------------------

WHICH_START: "Jag vet inte om du menar $+1"
WHICH_COMMA: ", $+1"
WHICH_OR: "eller $+1."

WHICH_PRONOUN_START: "Jag vet inte vad du menar med '$1',"
WHICH_PRONOUN_FIRST: "$+1"
    ---------------------------------------------
    -- NOTE: Second to last candidates are listed
    --       using WHICH_COMMA and WHICH_OR.
    ---------------------------------------------

-- =============================================================================

-- DIALOGER

-- =============================================================================

    ----------------------------------------------------------------------
    -- NOTE: Meddelanden som �r fr�gor har ett blanksteg efter fr�getecknet
    --       ("? "). Detta ger ett mellanrum mellan '?' och svaret som
    --       anv�ndaren skriver in.
    ----------------------------------------------------------------------

REALLY: "�r du s�ker (tryck RETUR f�r ja) ? "

QUIT_ACTION: "Vad vill du g�ra, UNDO, RESTART, RESTORE or QUIT ? "
    --------------------------------------------------------------
    -- NOTE: De angivna svarsalternativen UNDO, RESTART, RESTORE
    --       och QUIT �r h�rdkodade i ALAN och kan inte �ndras.
    --       Du b�r inte �vers�tta orden i meddelandet eftersom
    --       anv�ndaren d� inte vet vad som �r giltiga svar.
    --------------------------------------------------------------

HAVE_SCORED: "Du har samlat $1 po�ng av $2 p� $3 drag."

UNDONE: "'$1' ogjort."
NO_UNDO: "Det finns inget att g�ra ogjort."

--------------------------------------------------------------------------------
-- Spara spelomg�ngen
--------------------------------------------------------------------------------

SAVE_WHERE: "Spara �ventyret i vilken fil"
SAVE_OVERWRITE: "Filen fanns redan, skriva �ver (tryck RETUR f�r ja) ? "
SAVE_FAILED: "Tyv�rr, det gick inte att spara �ventyret."

--------------------------------------------------------------------------------
-- H�mta sparad spelomg�ng
--------------------------------------------------------------------------------

RESTORE_FROM: "H�mta sparat �ventyr fr�n vilken fil"
SAVE_MISSING: "Tyv�rr, kunde inte hitta n�got s�dant sparat �ventyr."
NOT_A_SAVEFILE: "Den filen verkar inte vara ett sparat Alan spel."
SAVE_VERSION: "Tyv�rr, det sparade �ventyret har inte samma version."
SAVE_NAME: "Tyv�rr, det var inte detta �ventyr som var sparat i den filen."
