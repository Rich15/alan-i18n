-- "bloccare.i" -> lock.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add to every object
  Is
    Not lockable.
    locked.
End add.


Syntax
  lock = lock (ogg)
    Where ogg IsA object
      else "You can't lock that."

Add to every object
  Verb lock
    Check ogg is lockable
      else "You can't lock that!"
    And ogg is not locked
      else "It's already locked."
    Does
      Make ogg locked. Say the ogg. "is now locked."
  End verb.
End add.


Syntax
  lock_with = lock (ogg) 'with' (key)
    Where ogg IsA object
      else "You can't lock that."
    And key IsA object
      else "You can't lock anything with that."

Add to every Object
  Verb lock_with
    When ogg
      Check ogg is lockable
        else "You can't lock that!"
      And ogg is not locked
        else "It's already locked."
      And key in hero
        else "You don't have" say the key. "."
      Does
        Make ogg locked.
        Say the ogg. "is now locked."
  End verb.
End add.


Syntax
  unlock = unlock (ogg)
    Where ogg IsA object
      else "You can't lock that."

Add to every object
  Verb unlock
    Check ogg is lockable
      else "You can't unlock that!"
    And ogg is locked
      else "It's already unlocked."
    Does
      Make ogg not locked.
      Say the ogg. "is now unlocked."
  End verb.
End add.


Syntax
  unlock_with = unlock (ogg) 'with' (key)
    Where ogg IsA object
      else "You can't lock that."
    And key IsA object
      else "You can't lock anything with that."

Add to every object
  Verb unlock_with
    When ogg
      Check ogg is lockable
        else "You can't unlock that!"
      And ogg is locked
        else "It's already unlocked."
      And key in hero
        else "You don't have" say the key. "."
      Does
        Make ogg not locked.
        Say the ogg. "is now unlocked."
  End verb.
End add.
