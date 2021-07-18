-- "Alan-Italian.i" ("lib_en/std.i")
-- Library version 0.6.2

Import 'grammatica.i'. -- Modulo creato appositamente per l'italiano.


-- All verb definitions have a small, simple default body. To make
-- them do other things use DOES ONLY in your specialised verb body.

-- player character, etc.
Import 'eroe.i'.               --> 'hero.i'
Import 'globali.i'.            --> 'global.i'

-- People, male/female etc.
Import 'persone.i'.            --> 'people.i'

-- Standard verbs
Import 'guardare.i'.           --> 'look.i'
Import 'prendere.i'.           --> 'take.i' + pick up, drop, put down.
Import 'aprire.i'.             --> 'open.i' + close.
Import 'bloccare.i'.           --> 'lock.i' + unlock.
Import 'mangiare.i'. -- + bere --> 'eat.i'  -- + drink.
Import 'lanciare.i'.           --> 'throw.i'
Import 'spingere.i'.           --> 'push.i'
Import 'toccare.i'.            --> 'touch.i'
Import 'esaminare.i'.          --> 'examine.i' + look at, search
Import 'leggere.i'.            --> 'read.i'
Import 'mettere.i'.            --> 'put.i' + put near,behind,on,under
Import 'dare.i'.               --> 'give.i'
Import 'parlare.i'.            --> 'talk.i' + ask, tell, say, shout
Import 'aggredire.i'.          --> 'attack.i' + shoot
Import 'baciare.i'.            --> 'kiss.i'
Import 'accendere.i'.          --> 'turn.i' + switch
Import 'ascoltare.i'.          --> 'listen.i'
Import 'annusare.i'.           --> 'smell.i'
Import 'bussare.i'.            --> 'knock.i'
Import 'saltare.i'.            --> 'jump.i'
Import 'indossare.i'.          --> 'wear.i' + remove, undress, put on

Import 'aiuto.i'.              --> 'help.i' + notes, hint


-- Scenery
Import 'scenario.i'.           --> 'scenery.i'

-- Inventory verb and inventory limits (including clothing items)
Import 'inventario.i'.         --> 'invent.i'


-- LIMBO E DIREZIONI
-- =================
-- Definisce le varie direzioni e le loro abbreviazioni (sinonimi) e il "libmo",
-- un luogo fittizio in cui parcheggiare le entità che si vogliono far sparire
-- di scena.

Import 'limbo.i'.              --> 'nowhere.i'


-- Verbose and brief mode
Import 'verbosità.i'.          --> 'brief.i'


-- Score, save, restore etc.
Import 'meta_verbi.i'.         --> 'meta.i'
