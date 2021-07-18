-- "Alan-Italian.i" ("lib_en/std.i")
-- Library version 0.6.2

Import 'grammatica.i'. -- Modulo creato appositamente per l'italiano.


-- All verb definitions have a small, simple default body. To make
-- them do other things use DOES ONLY in your specialised verb body.

-- player character, etc.
Import 'eroe.i'. --> 'hero.i'
---- Import 'global.i'.

-- People, male/female etc.
Import 'persone.i'. --> 'people.i'

-- Standard verbs
Import 'guardare.i'. --> 'look.i'
---- Import 'take.i'.    -- + pick up, drop, put down.
---- Import 'open.i'.    -- + close.
---- Import 'lock.i'.    -- + unlock.
Import 'mangiare.i'. -- + bere --> 'eat.i'  -- + drink.
---- Import 'throw.i'.
Import 'spingere.i'. --> 'push.i'
Import 'toccare.i'. --> 'touch.i'
---- Import 'examine.i'. -- + look at, search
Import 'leggere.i'. --> 'read.i'
---- Import 'put.i'.     -- + put near,behind,on,under
Import 'dare.i'. --> 'give.i'
---- Import 'talk.i'.    -- + ask, tell, say, shout,
---- Import 'attack.i'.  -- + shoot
Import 'baciare.i'. --> 'kiss.i'
---- Import 'turn.i'.    -- + switch
Import 'ascoltare.i'. --> 'listen.i'
Import 'annusare.i'. --> 'smell.i'
---- Import 'knock.i'.
Import 'saltare.i'. --> 'jump.i'
---- Import 'wear.i'.    -- + remove, undress, put on

---- Import 'help.i'.    -- + notes, hint


-- Scenery
---- Import 'scenery.i'.

-- Inventory verb and inventory limits (including clothing items)
---- Import 'invent.i'.


-- LIMBO E DIREZIONI
-- =================
-- Definisce le varie direzioni e le loro abbreviazioni (sinonimi) e il "libmo",
-- un luogo fittizio in cui parcheggiare le entità che si vogliono far sparire
-- di scena.

Import 'limbo.i'. --> 'nowhere.i'


-- Verbose and brief mode
---- Import 'brief.i'.


-- Score, save, restore etc.
---- Import 'meta.i'.
