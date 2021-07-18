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
| [`attack.i`][attack.i]   |                                    |        |
| [`brief.i`][brief.i]     |                                    |        |
| [`eat.i`][eat.i]         |                                    |        |
| [`examine.i`][examine.i] |                                    |        |
| [`give.i`][give.i]       | [`dare.i`][dare.i]                 | 80%    |
| [`global.i`][global.i]   |                                    |        |
| [`help.i`][help.i]       |                                    |        |
| [`hero.i`][hero.i]       | [`eroe.i`][eroe.i]                 | 99%    |
| [`invent.i`][invent.i]   |                                    |        |
| [`jump.i`][jump.i]       | [`saltare.i`][saltare.i]           | 99%    |
| [`kiss.i`][kiss.i]       | [`baciare.i`][baciare.i]           | 90%    |
| [`knock.i`][knock.i]     |                                    |        |
| [`listen.i`][listen.i]   |                                    |        |
| [`lock.i`][lock.i]       |                                    |        |
| [`look.i`][look.i]       | [`guardare.i`][guardare.i]         | 99%    |
| [`meta.i`][meta.i]       |                                    |        |
| [`nowhere.i`][nowhere.i] | [`limbo.i`][limbo.i]               | WIP    |
| [`open.i`][open.i]       |                                    |        |
| [`people.i`][people.i]   | [`persone.i`][persone.i]           | 90%    |
| [`push.i`][push.i]       |                                    |        |
| [`put.i`][put.i]         |                                    |        |
| [`read.i`][read.i]       |                                    |        |
| [`scenery.i`][scenery.i] |                                    |        |
| [`smell.i`][smell.i]     |                                    |        |
| [`std.i`][std.i]         | [`Alan-Italian.i`][Alan-Italian.i] | WIP    |
| [`take.i`][take.i]       |                                    |        |
| [`talk.i`][talk.i]       |                                    |        |
| [`throw.i`][throw.i]     |                                    |        |
| [`touch.i`][touch.i]     | [`toccare.i`][toccare.i]           | 90%    |
| [`turn.i`][turn.i]       |                                    |        |
| [`wear.i`][wear.i]       |                                    |        |
|                          | [`grammatica.i`][grammatica.i]     | WIP    |


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- Lib IT modules -->

[Alan-Italian.i]: ./Alan-Italian.i "View source module"
[grammatica.i]: ./grammatica.i "View source module"
[limbo.i]: ./limbo.i "View source module"
[eroe.i]: ./eroe.i "View source module"
[saltare.i]: ./saltare.i "View source module"
[guardare.i]: ./guardare.i "View source module"
[persone.i]: ./persone.i "View source module"
[dare.i]: ./dare.i "View source module"
[baciare.i]: ./baciare.i "View source module"
[toccare.i]: ./toccare.i "View source module"

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
