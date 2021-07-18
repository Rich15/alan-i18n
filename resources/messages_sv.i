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

-- Use this template to override the standard messages built into Alan with your
-- custom messages. The message definitions shown here are the default ones for
-- the Swedish language.

-- You can provide fine-tuned message responses by adding conditional code
-- constructs inside any MESSAGE definition. For more info on how to achieve
-- this, refer to The ALAN Manual "�3.15. MESSAGEs".

-- For a detailed explanation of each message and its usage context, refer to
-- The ALAN Manual "Appendix C.1. Input Response Messages".

--------------------------------------------------------------------------------

MESSAGE

MORE: "<Mera>"

-- =============================================================================

-- DESCRIPTIONS

-- =============================================================================

--------------------------------------------------------------------------------
-- Player Location
--------------------------------------------------------------------------------

AGAIN: "(igen)"

SEE_START: "Det finns $01"
SEE_COMMA: ", $01"
SEE_AND: "och $01"
SEE_END: "h�r."

--------------------------------------------------------------------------------
-- Inanimate Containers
--------------------------------------------------------------------------------

CONTAINS: "$+1 inneh�ller"
CONTAINS_COMMA: "$01,"
CONTAINS_AND: "$01 och"
CONTAINS_END: "$01."

IS_EMPTY: "$+1 �r tom."

--------------------------------------------------------------------------------
-- Actors Inventories
--------------------------------------------------------------------------------

CARRIES: "$+1 b�r p�"
EMPTY_HANDED: "$+1 �r tomh�nt."

-- =============================================================================

-- INVALID COMMANDS

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

-- PARING PROBLEMS

-- =============================================================================

UNKNOWN_WORD: "Jag k�nner inte till ordet '$1'."
WHAT: "Jag f�rst�r inte."
WHAT_WORD: "Jag vet inte vad du menar med '$1'."
MULTIPLE: "Du kan inte ange flera objekt tillsammans med verbet '$v'."
NOUN: "Du m�ste ange ett substantiv."

--------------------------------------------------------------------------------
-- Improper use of BUT and ALL
--------------------------------------------------------------------------------

AFTER_BUT: "Det borde vara minst ett objekt efter '$1'."
BUT_ALL: "Du kan bara anv�nda '$1' efter '$2'."
NOT_MUCH: "Det blir inte s� mycket kvar att $v d�!"

--------------------------------------------------------------------------------
-- Disambiguation
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

-- GAME-SESSION MESSAGES

-- =============================================================================

    ----------------------------------------------------------------------
    -- NOTE: Question messages add a space after the question mark ("? ").
    --       This grants spacing between the '?' and the confirmation
    --       prompt where the user will be typing the response.
    ----------------------------------------------------------------------

REALLY: "�r du s�ker (RETURN f�r ja) ? "

QUIT_ACTION: "Vad vill du g�ra, UNDO, RESTART, RESTORE or QUIT ? "
    --------------------------------------------------------------
    -- NOTE: The suggested choices UNDO, RESTART, RESTORE and QUIT
    --       are hardcoded into ALAN and can't be overridden.
    --       You shouldn't translate these words in the message
    --       lest the player won't known how to reply correctly.
    --------------------------------------------------------------

HAVE_SCORED: "Du har samlat $1 po�ng av $2 p� $3 drag."

UNDONE: "'$1' ogjort."
NO_UNDO: "Det finns inget att g�ra ogjort."

--------------------------------------------------------------------------------
-- Saving Game Session
--------------------------------------------------------------------------------

SAVE_WHERE: "Spara �ventyret i vilken fil"
SAVE_OVERWRITE: "Filen fanns redan, skriva �ver (RETURN f�r ja) ? "
SAVE_FAILED: "Tyv�rr, det gick inte att spara �ventyret."

--------------------------------------------------------------------------------
-- Restoring Saved Game Session
--------------------------------------------------------------------------------

RESTORE_FROM: "H�mta sparat �ventyr fr�n vilken fil"
SAVE_MISSING: "Tyv�rr, kunde inte hitta n�got s�""dant sparat �ventyr."
NOT_A_SAVEFILE: "Den filen verkar inte vara ett sparat Alan spel."
SAVE_VERSION: "Tyv�rr, det sparade �ventyret har inte samma version."
SAVE_NAME: "Tyv�rr, det var inte detta �ventyr som var sparat i den filen."
