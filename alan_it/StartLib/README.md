# ALAN Library Italian

WIP port of the __ALAN Libraryv 0.6.2__ to Italian, by [Tristano Ajmone].


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About](#about)
- [Modules Status](#modules-status)

<!-- /MarkdownTOC -->

-----

# About

The [`Alan-Italian.i`][Alan-Italian.i] file is the main library module that imports all others (called [`std.i`][std.i] in the English library).

In order to use the library is sufficient to import this single module from your main adventure source file:

```alan
Import 'Alan-Italian.i'.
```

and add the library folder to the import paths when invoking the compiler:

```batch
alan -include lib_it my_adventure.alan
```

# Modules Status

The following table contains the list of the original English modules, their Italian counterparts and progress status, as well as the additional modules for the Italian language.

|          Lib EN          |               Lib IT               | Status |
|--------------------------|------------------------------------|--------|
|                          | [`grammatica.i`][grammatica.i]     | WIP    |
| [`attack.i`][attack.i]   | [`aggredire.i`][aggredire.i]       | TBD!   |
| [`brief.i`][brief.i]     | [`verbosità.i`][verbosità.i]       | TBD!   |
| [`eat.i`][eat.i]         | [`mangiare.i`][mangiare.i]         | 90%    |
| [`examine.i`][examine.i] | [`esaminare.i`][esaminare.i]       | 15%    |
| [`give.i`][give.i]       | [`dare.i`][dare.i]                 | 80%    |
| [`global.i`][global.i]   | [`globali.i`][globali.i]           | TBD!   |
| [`help.i`][help.i]       | [`aiuto.i`][aiuto.i]               | TBD!   |
| [`hero.i`][hero.i]       | [`eroe.i`][eroe.i]                 | 99%    |
| [`invent.i`][invent.i]   | [`inventario.i`][inventario.i]     | TBD!   |
| [`jump.i`][jump.i]       | [`saltare.i`][saltare.i]           | 99%    |
| [`kiss.i`][kiss.i]       | [`baciare.i`][baciare.i]           | 90%    |
| [`knock.i`][knock.i]     | [`bussare.i`][bussare.i]           | TBD!   |
| [`listen.i`][listen.i]   | [`ascoltare.i`][ascoltare.i]       | 85%    |
| [`lock.i`][lock.i]       | [`bloccare.i`][bloccare.i]         | TBD!   |
| [`look.i`][look.i]       | [`guardare.i`][guardare.i]         | 99%    |
| [`meta.i`][meta.i]       | [`meta_verbi.i`][meta_verbi.i]     | TBD!   |
| [`nowhere.i`][nowhere.i] | [`limbo.i`][limbo.i]               | WIP    |
| [`open.i`][open.i]       | [`aprire.i`][aprire.i]             | TBD!   |
| [`people.i`][people.i]   | [`persone.i`][persone.i]           | 90%    |
| [`push.i`][push.i]       | [`spingere.i`][spingere.i]         | 90%    |
| [`put.i`][put.i]         | [`mettere.i`][mettere.i]           | TBD!   |
| [`read.i`][read.i]       | [`leggere.i`][leggere.i]           | 85%    |
| [`scenery.i`][scenery.i] | [`scenario.i`][scenario.i]         |        |
| [`smell.i`][smell.i]     | [`annusare.i`][annusare.i]         | 85%    |
| [`std.i`][std.i]         | [`Alan-Italian.i`][Alan-Italian.i] | WIP    |
| [`take.i`][take.i]       | [`prendere.i`][prendere.i]         | TBD!   |
| [`talk.i`][talk.i]       | [`parlare.i`][parlare.i]           | TBD!   |
| [`throw.i`][throw.i]     | [`lanciare.i`][lanciare.i]         | TBD!   |
| [`touch.i`][touch.i]     | [`toccare.i`][toccare.i]           | 90%    |
| [`turn.i`][turn.i]       | [`accendere.i`][accendere.i]       | TBD!   |
| [`wear.i`][wear.i]       | [`indossare.i`][indossare.i]       | TBD!   |


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- Lib IT modules -->

[Alan-Italian.i]: ./Alan-Italian.i "View source module"
[accendere.i]: ./accendere.i "View source module"
[aggredire.i]: ./aggredire.i "View source module"
[aiuto.i]: ./aiuto.i "View source module"
[annusare.i]: ./annusare.i "View source module"
[aprire.i]: ./aprire.i "View source module"
[ascoltare.i]: ./ascoltare.i "View source module"
[baciare.i]: ./baciare.i "View source module"
[bloccare.i]: ./bloccare.i "View source module"
[bussare.i]: ./bussare.i "View source module"
[dare.i]: ./dare.i "View source module"
[eroe.i]: ./eroe.i "View source module"
[esaminare.i]: ./esaminare.i "View source module"
[globali.i]: ./globali.i "View source module"
[grammatica.i]: ./grammatica.i "View source module"
[guardare.i]: ./guardare.i "View source module"
[indossare.i]: ./indossare.i "View source module"
[inventario.i]: ./inventario.i "View source module"
[lanciare.i]: ./lanciare.i "View source module"
[leggere.i]: ./leggere.i "View source module"
[limbo.i]: ./limbo.i "View source module"
[mangiare.i]: ./mangiare.i "View source module"
[meta_verbi.i]: ./meta_verbi.i "View source module"
[mettere.i]: ./mettere.i "View source module"
[parlare.i]: ./parlare.i "View source module"
[persone.i]: ./persone.i "View source module"
[prendere.i]: ./prendere.i "View source module"
[saltare.i]: ./saltare.i "View source module"
[scenario.i]: ./scenario.i "View source module"
[spingere.i]: ./spingere.i "View source module"
[toccare.i]: ./toccare.i "View source module"
[verbosità.i]: ./verbosità.i "View source module"

<!-- Lib EN modules -->

[attack.i]: ../../alan_en/lib_en/attack.i "View original source module"
[brief.i]: ../../alan_en/lib_en/brief.i "View original source module"
[eat.i]: ../../alan_en/lib_en/eat.i "View original source module"
[examine.i]: ../../alan_en/lib_en/examine.i "View original source module"
[give.i]: ../../alan_en/lib_en/give.i "View original source module"
[global.i]: ../../alan_en/lib_en/global.i "View original source module"
[help.i]: ../../alan_en/lib_en/help.i "View original source module"
[hero.i]: ../../alan_en/lib_en/hero.i "View original source module"
[invent.i]: ../../alan_en/lib_en/invent.i "View original source module"
[jump.i]: ../../alan_en/lib_en/jump.i "View original source module"
[kiss.i]: ../../alan_en/lib_en/kiss.i "View original source module"
[knock.i]: ../../alan_en/lib_en/knock.i "View original source module"
[listen.i]: ../../alan_en/lib_en/listen.i "View original source module"
[lock.i]: ../../alan_en/lib_en/lock.i "View original source module"
[look.i]: ../../alan_en/lib_en/look.i "View original source module"
[meta.i]: ../../alan_en/lib_en/meta.i "View original source module"
[nowhere.i]: ../../alan_en/lib_en/nowhere.i "View original source module"
[open.i]: ../../alan_en/lib_en/open.i "View original source module"
[people.i]: ../../alan_en/lib_en/people.i "View original source module"
[push.i]: ../../alan_en/lib_en/push.i "View original source module"
[put.i]: ../../alan_en/lib_en/put.i "View original source module"
[read.i]: ../../alan_en/lib_en/read.i "View original source module"
[scenery.i]: ../../alan_en/lib_en/scenery.i "View original source module"
[smell.i]: ../../alan_en/lib_en/smell.i "View original source module"
[std.i]: ../../alan_en/lib_en/std.i "View original source module"
[take.i]: ../../alan_en/lib_en/take.i "View original source module"
[talk.i]: ../../alan_en/lib_en/talk.i "View original source module"
[throw.i]: ../../alan_en/lib_en/throw.i "View original source module"
[touch.i]: ../../alan_en/lib_en/touch.i "View original source module"
[turn.i]: ../../alan_en/lib_en/turn.i "View original source module"
[wear.i]: ../../alan_en/lib_en/wear.i "View original source module"

<!-- people and organizations -->

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
