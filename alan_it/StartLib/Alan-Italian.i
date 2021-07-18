-- "Alan-Italian.i" ("lib_en/std.i")
-- Library version 0.6.2

Import 'grammatica.i'. -- Modulo creato appositamente per l'italiano.


-- All verb definitions have a small, simple default body. To make
-- them do other things use DOES ONLY in your specialised verb body.

-- player character, etc.
---- Import 'hero.i'.
---- Import 'global.i'.

-- People, male/female etc.
---- Import 'people.i'.

-- Standard verbs
---- Import 'look.i'.
---- Import 'take.i'.    -- + pick up, drop, put down.
---- Import 'open.i'.    -- + close.
---- Import 'lock.i'.    -- + unlock.
---- Import 'eat.i'.     -- + drink.
---- Import 'throw.i'.
---- Import 'push.i'.
---- Import 'touch.i'.
---- Import 'examine.i'. -- + look at, search
---- Import 'read.i'.
---- Import 'put.i'.     -- + put near,behind,on,under
---- Import 'give.i'.
---- Import 'talk.i'.    -- + ask, tell, say, shout,
---- Import 'attack.i'.  -- + shoot
---- Import 'kiss.i'.
---- Import 'turn.i'.    -- + switch
---- Import 'listen.i'.
---- Import 'smell.i'.
---- Import 'knock.i'.
---- Import 'jump.i'.
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

Import 'limbo.i'. -- 'nowhere.i'


-- Verbose and brief mode
---- Import 'brief.i'.


-- Score, save, restore etc.
---- Import 'meta.i'.
