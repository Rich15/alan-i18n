-- "aggredire.i" -> attack.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every thing
  Is not shootable.
End add.

Add to every object
  Is
    Not weapon.    -- @TRANSLATE ATTRIBUTE!
    Not shootable. -- @TRANSLATE ATTRIBUTE!
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNONYMS combatti, picchia = attacca.
--    SYNTAX attacca = attacca (bersaglio)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Synonyms
  kill, fight, hit = attack.
  fire = shoot.


Syntax
  attack = attack (png)
    Where png IsA thing
      else "You can't attack that."

Add to every thing
  Verb attack
    Does
      "Violence is not the answer."
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX attacca_con = attacca (bersaglio) con (arma)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  attack_with = attack (png) 'with' (ogg)
    Where png IsA thing
      else "You can't attack that."
    And ogg IsA object
      else "You can't attack anything with that!"

Add to every thing
  Verb attack_with
    When ogg
      Check ogg in hero
        else "You don't have that object to attack with."
      And ogg is weapon
        else "No point attacking anything with that!"
      Does
        "Violence is not the answer."
  End verb.
End add.



-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX spara = spara con (arma)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  shoot = shoot (ogg)
    Where ogg IsA thing
      else "You can't shoot at that."
  shoot = shoot 'at' (ogg).


Add to every thing
  Verb shoot
    Does
      If ogg is shootable then
        "You need to specify what to shoot at."
      else
        "You need to specify what you want to shoot"
        say the ogg. "with."
      End if.
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX  spara_a = spara con (arma) a (bersaglio)
--            spara_a = spara a (bersaglio) con (arma).
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- @NOTE: Le due sintassi inglesi non legano bene con le esigenze italiane.
--        'shoot_at' non può avere la sintassi "spara pistola a pippo".
--        Il problema è che l'oggetto di "spara" non può essere l'arma ma
--        piuttosto i suoi proiettili ("spara fuoco"). Non credo che in
--        inglese sia così diverso, e che questi verbi andrebbero rivisti.

Syntax
  shoot_at = shoot (ogg) 'at' (png)
    Where ogg IsA object
      else "You can't shoot that."
    And png IsA thing
      else "You can't shoot at that."

  shoot_with = shoot (png) 'with' (ogg)
    Where ogg IsA object
      else "You can't shoot that."
    And png IsA thing
      else "You can't shoot at that."

Add to every thing
  Verb shoot_at
    When ogg
      Check ogg in hero
        else "You don't have that."
      And ogg is shootable
        else "You can't shoot anything with that."
      Does
        "Violence is not the answer."
  End verb.

  Verb shoot_with
    When ogg
      Check ogg in hero
        else "You don't have that."
      And ogg is shootable
        else "You can't shoot anything with that."
      Does
        "Violence is not the answer."
  End verb.
End add.
