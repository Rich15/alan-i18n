﻿-- "mensajes.i" <- messages_runtime.i" (added in Foundation)

Message

MORE: "<continúa>"


-- =============================================================================

-- DESCRIPTIONS

-- =============================================================================

--------------------------------------------------------------------------------
-- Player Location
--------------------------------------------------------------------------------

AGAIN: "(nuevamente)"

--  CANT: "No puedes $v $+1."
SEE_START: "Hay $01"
SEE_COMMA: ", $01"
SEE_AND: "y $01"
SEE_END: "."

--  SEE_ACTOR: "está aquí." -- @CEHCK: What was this for? Why commented out?

--------------------------------------------------------------------------------
-- Inanimate Containers
--------------------------------------------------------------------------------

-- These messages are used when listing the contents of containers, which can be
-- either container objects or actors.

-- @TODO: Should these messages check for gender and number?

CONTAINS: "$+1"
  If parameter1 is not plural
    then "contiene"
    else "contienen"
  End if.

-- The IF blocks in the following group of messages adds "(being worn)" after
-- every item worn by an actor, when using `LIST actor`.

-- @TODO: Also handle gender & number correctly:

CONTAINS_COMMA: "$01,"
  If parameter1 isa object then
    If parameter1 is puesto
      then "(está puesto)"
    End if.
  End if. "$$,"

CONTAINS_AND: "$01"
  If parameter1 isa object then
    If parameter1 is puesto
      then "(está puesto)"
    End if.
  End if. "and"

CONTAINS_END: "$01."
  If parameter1 isa object then
    If parameter1 is puesto
      then "(está puesto)"
    End if.
  End if. "."

IS_EMPTY: "$+1 no contiene nada."

--------------------------------------------------------------------------------
-- Actors Inventories
--------------------------------------------------------------------------------

CARRIES: "$+1"
  If parameter1 is not plural
    then "lleva"
    else "llevan"
  End if.

EMPTY_HANDED: "$+1 no lleva nada."

-- =============================================================================

-- INVALID COMMANDS

-- =============================================================================

NO_SUCH: "No hay $1 aquí."
NO_WAY: "No puedes ir por ahí."
CANT0: "No se puede."
//// @TRANSLATE MESSAGES ///////////////////////////////////////////////////////
IMPOSSIBLE_WITH: "That's impossible with $+1."

CAN_NOT_CONTAIN: "$+1 can not contain $+2."
CONTAINMENT_LOOP: "Putting $+1 in itself is impossible."
CONTAINMENT_LOOP2: "It is impossible to put $+1 in $+2
                    because $+2 is already inside $+1."
////////////////////////////////////////////////////////////////////////////////

-- =============================================================================

-- PARSING PROBLEMS

-- =============================================================================

UNKNOWN_WORD: "La palabra ""$1"" no es relevante."
WHAT: "No entiendo bien esa frase. Redactala de nuevo."
WHAT_WORD: "No entiendo lo que quieres decir con ""$1""."
MULTIPLE: "No puedes aplicar ese verbo a varios objetos."
NOUN: "Tienes que poner un sustantivo."

--------------------------------------------------------------------------------
-- Improper use of BUT and ALL
--------------------------------------------------------------------------------

AFTER_BUT: "Tienes que poner un objeto después de $1."
BUT_ALL: "Solamente puedes usar ""$1"" después de ""$2""."
NOT_MUCH: "Eso no deja mucho."

--------------------------------------------------------------------------------
-- Disambiguation
--------------------------------------------------------------------------------

WHICH_START: "No sé si quieres decir $+1"
WHICH_COMMA: ", $+1"
WHICH_OR: "o $+1."

//// @TRANSLATE MESSAGES ///////////////////////////////////////////////////////
WHICH_PRONOUN_START: "I'm not sure whether by '$1' you mean"
WHICH_PRONOUN_FIRST: "$+1"
////////////////////////////////////////////////////////////////////////////////
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

REALLY: "Are you sure (RETURN confirms) ? " -- @TRANSLATE!

QUIT_ACTION: "¿Quiere revertir (undo), recomenzar (restart), restaurar (restore) o salir (quit)? "
    --------------------------------------------------------------
    -- NOTE: The suggested choices UNDO, RESTART, RESTORE and QUIT
    --       are hardcoded into ALAN and can't be overridden.
    --       You shouldn't translate these words in the message
    --       lest the player won't known how to reply correctly.
    --------------------------------------------------------------

HAVE_SCORED: "Has logrado $1 puntos de un total de $2."

UNDONE: "Acción revertida."
NO_UNDO: "No se puede revertir ahora."

--------------------------------------------------------------------------------
-- Saving Game Session
--------------------------------------------------------------------------------

SAVE_WHERE: "Nombre de archivo para salvar"
SAVE_OVERWRITE: "Ese archivo ya existe. ¿Desea sobreescribirlo? (ENTER confirma)"
SAVE_FAILED: "Lo siento, no pude salvar la partida."

--------------------------------------------------------------------------------
-- Restoring Saved Game Session
--------------------------------------------------------------------------------

RESTORE_FROM: "Nombre del archivo para cargar"
SAVE_MISSING: "Lo siento, no puedo abrir ese archivo."
NOT_A_SAVEFILE: "Ese archivo no parece ser una partida salvada."
SAVE_VERSION: "Lo siento, el archivo fue creado por otra versión de Alan."
SAVE_NAME: "Lo siento, el archivo no es de esta aventura."
