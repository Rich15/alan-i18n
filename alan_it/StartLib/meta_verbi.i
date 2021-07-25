-- "meta_verbi.i" -> meta.i

Synonyms q = 'quit'.

Syntax
  'quit' = 'quit'. -- @TRANSLATE!

Verb 'quit'
  Does
    Quit.
End verb.


Syntax
  'save' = 'save'. -- @TRANSLATE!

Verb 'save'
  Does
    Save.
    "Ok."
End verb.


Syntax
  'restore' = 'restore'. -- @TRANSLATE!

Verb 'restore'
  Does
    Restore.
    "Done.$n"
    Look.
End verb.


Syntax
  'restart' = 'restart'. -- @TRANSLATE!

Verb 'restart'
  Does
    Restart.
End verb.


Syntax
  'score' = 'score'. -- @TRANSLATE!

Verb 'score'
  Does
    Score.
End verb.


Synonyms
  z = 'wait'.

Syntax
  'wait' = 'wait'. -- @TRANSLATE!

Verb 'wait'
  Does
    "Time passes..." -- @TRANSLATE!
End verb.


Synonyms
  g = again.

Syntax
  again = again. -- @TRANSLATE!

Verb again
  Does -- @TRANSLATE!
    "The 'again' command is not available, sorry. You can probably use
     the up and down arrow keys to scroll through your previous commands
     (unless you're using the MSDOS interpreter in which case you can
     press the F3 key to repeat your last command.)"
End verb.


-- Syntax
--   undo = undo.

-- Verb undo
--   Does
--     "Unfortunately you cannot 'undo' commands in this game."
-- End verb.
