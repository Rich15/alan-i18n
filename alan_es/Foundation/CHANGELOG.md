# Spanish Foundation Library ChangeLog

This is the ChangeLog for the __ALAN Foundation Library__, Spanish version.

An archived copy of the original __[Librería pALANte v0.6.1e]__ (from which this library was derived) can be found at the __[ALAN Goodies]__ project.

To learn more about the library version scheme, see the [`VERSION_SCHEME.md`][VERSION_SCHEME.md] document.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Beta Releases](#beta-releases)
    - [v0.2.0 \(2021/xx/xx\)](#v020-2021xxxx)
        - [Wearing Mechanics Refs \(DELME!\)](#wearing-mechanics-refs-delme)
        - [New wearing Mechanics](#new-wearing-mechanics)
        - [Drop Implicit Taking](#drop-implicit-taking)
        - [Bug Fixes](#bug-fixes)
    - [v0.1.3 \(2021/09/12\)](#v013-20210912)
        - [New `xDesc` Attribute](#new-xdesc-attribute)
    - [v0.1.2 \(2021/09/12\)](#v012-20210912)
        - [Meta Verbs](#meta-verbs)
    - [v0.1.1 \(2021/09/10\)](#v011-20210910)
        - [UTF-8 Encoding](#utf-8-encoding)
    - [v0.1.0 \(2021/07/24\)](#v010-20210724)
        - [pALANte v0.6.1e](#palante-v061e)

<!-- /MarkdownTOC -->

-----

# Beta Releases

Lacking a native Spanish speaker who could take on maintenance of the Spanish library, [Tristano Ajmone] began updating the __Spanish Foundation Library__ to mirror the changes of the new __[English Foundation Library]__ as much as possible — the limit being the inability to handle text changes due to lack of confidence when it comes to writing in Spanish.


## v0.2.0 (2021/xx/xx)

### Wearing Mechanics Refs (DELME!)

Some temporary lookup tables to find and compare elements names in Spanish and English, and their defining module (in both libs, since they might differ), to aid the adaptation work.

#### Library Elements

|    type   |   name EN    |     name ES     |   module ES    |  module EN  |
|-----------|--------------|-----------------|----------------|-------------|
| ACTOR     | `nobody`     | _TBD!_          | `persona.i`    | `people.i`  |
| ATTRIBUTE | `wearer`     | _TBD!_          | `llevar.i`     | `wear.i`    |
| ATTRIBUTE | `worn`       | _TBD!_          | `llevar.i`     | `wear.i`    |
| ENTITY    | `worn`       | `llevado`       | `inventario.i` | `invent.i`  |
| LOCATION  | `nowhere`    | `limbo`         | `limbo.i`      | `nowhere.i` |
| VERB      | `drink`      | `beber`         | `comer.i`      | `eat.i`     |
| VERB      | `drop`       | `dejar`         | `tomar.i`      | `take.i`    |
| VERB      | `eat`        | `comer`         | `comer.i`      | `eat.i`     |
| VERB      | `examine`    | `examinar`      | `examinar.i`   | `examine.i` |
| VERB      | `give`       | `dar`           | `dar.i`        | `give.i`    |
| VERB      | `invent`     | `invent`        | `inventario.i` | `invent.i`  |
| VERB      | `pick_up1`   | _not available_ | `tomar.i`      | `take.i`    |
| VERB      | `pick_up2`   | _not available_ | `tomar.i`      | `take.i`    |
| VERB      | `put_behind` | `poner_detras`  | `poner.i`      | `put.i`     |
| VERB      | `put_down1`  | _not available_ | `tomar.i`      | `take.i`    |
| VERB      | `put_down2`  | _not available_ | `tomar.i`      | `take.i`    |
| VERB      | `put_in`     | `poner_en`      | `poner.i`      | `put.i`     |
| VERB      | `put_near`   | `poner_cerca`   | `poner.i`      | `put.i`     |
| VERB      | `put_on`     | `poner_sobre`   | `poner.i`      | `put.i`     |
| VERB      | `put_under`  | `poner_bajo`    | `poner.i`      | `put.i`     |
| VERB      | `put`        | `poner`         | `poner.i`      | `put.i`     |
| VERB      | `remove`     | `quitar`        | `llevar.i`     | `wear.i`    |
| VERB      | `take_from`  | `tomar_de`      | `tomar.i`      | `take.i`    |
| VERB      | `take`       | `tomar`         | `tomar.i`      | `take.i`    |
| VERB      | `throw_at`   | `lanzar_a`      | `lanzar.i`     | `throw.i`   |
| VERB      | `throw_in`   | `lanzar_en`     | `lanzar.i`     | `throw.i`   |
| VERB      | `throw_to`   | `lanzar_a`      | `lanzar.i`     | `throw.i`   |
| VERB      | `throw`      | `lanzar`        | `lanzar.i`     | `throw.i`   |
| VERB      | `undress`    | `desnudar`      | `llevar.i`     | `wear.i`    |
| VERB      | `wear`       | `llevar`        | `llevar.i`     | `wear.i`    |


#### Library Modules

|  module EN  |    module ES    |
|-------------|-----------------|
| `eat.i`     | `comer.i`       |
| `examine.i` | `examinar.i`    |
| `give.i`    | `dar.i`         |
| `globals.i` | _not available_ |
| `invent.i`  | `inventario.i`  |
| `limbo.i`   | `nowhere.i`     |
| `people.i`  | `persona.i`     |
| `put.i`     | `poner.i`       |
| `take.i`    | `tomar.i`       |
| `take.i`    | `tomar.i`       |
| `throw.i`   | `lanzar.i`      |
| `wear.i`    | `llevar.i`      |


### New wearing Mechanics

The wearing mechanics have been entireLy redesigned, the new system being simpler and less error-prone, also allowing NPCs to wear items:

- [x] Renamed the `llevable` attribute to `ponible`, which is more explicitly focused on "wearing" rather than "carrying".
- [x] Removed the `llevado` ENTIY (in `inventario.i`), which is now replaced by two new attributes defined on every `object`:
    + [x] `portador` — a reference attribute pointing to the wearing actor or `nadie` (a dummy actor located `at limbo`).
    + [x] `puesto` — a boolean attribute. Also needed because ALAN aggregators only support boolean attributes in filters.
- [x] The `nadie` actor instance, located `at limbo`, is defined in `persona.i` as a dummy placeholder for the new `portador` attribute, to indicate that a `ponible` item is unworn if its wearer is the `nadie` instance.
- [x] The `llevar` verb now makes the worn item `is puesto` and sets its `portador to hero`.
- [x] Verbs that were relying on the `llevado` entity have been adapted to the new system:
    + [x] Verbs `llevar`, `quitar` and `desnudar` (in `llevar.i`).
    + [x] Verb `tomar` (in `tomar.i`).
    + [x] The `invent` verb (in `inventario.i`).
- [x] Every verb that moves around object must now also make that object unworn by making it `not worn` and setting its `wearer to nobody`. The following verbs were modified accordingly:
    + [x] `desnudar` (in `llevar.i`)
    + [x] `comer` and `beber` (in `comer.i`) — food and drinks shouldn't be wearable, but you never know in IF.
    + [x] `dar` (in `dar.i`)
    + [x] `poner` (in `poner.i`)
    + [x] `poner_en` (in `poner.i`)
    + [x] `poner_cerca`, `poner_detras`, `poner_sobre` and `poner_bajo` (in `poner.i`)
    + [x] `tomar` (in `tomar.i`)
    + [x] `dejar` (in `tomar.i`)
    + [x] `tomar_de` (in `tomar.i`)
    + [x] `lanzar` (in `lanzar.i`)
    + [x] `lanzar_a` (in `lanzar.i`)
    + [x] `lanzar_en` (in `lanzar.i`)
- [x] The inventory verb (`invent` in `inventario.i`) now lists separately carried and worn items, by iterating twice through every item `in hero` and by checking the `puesto` attribute status to distinguish between items that are simply carried and those that are being worn.
- [x] In `examinar.i`, and additional definition of the `examinar` verb `Does after` is implemented on every actor to list separately carried and worn items, similarly to how inventory works for the Hero.

These new features also required some tweaks here and there:

- [x] In `atributos.i`:
    + [x] Every actor is provided with the `Container` propriety.
    + [x] The grammar attributes (`femenina`, `plural`, etc.) are now defined on `entity` instead of `thing` to simplify handling run-time MESSAGEs, verb checks and filters.
        This can also be useful in advanced adventures which need to refer to locations names, which might be singular or plural named.
- [x] A new module has been added to the library:
    + [x] `temp.i` — defining the `temp` location, on which the `cnt` numeric attribute is defined for storing temporary values needed in some complex library code.
- [ ] `messages_runtime.i` — redefines run-time messages to add "(being worn)" to each worn item being listed through the `list` statement. Useful in case author need to use `list` without having to replicate the iteration code for producing two separate lists for carried and worn items.
- [x] The _Vampiro_ adventure had to be slightly tweaked in order to keep working with the new changes.

### Drop Implicit Taking

We decided that the Foundation Library will not implement implicit taking in any of its verbs, leaving it instead for end authors to decide whether to provide or not this feature in their adventure, which verbs deserve implicit taking, and how to implement it, according to their specific needs.
This choice affected a single library verb:

- [x] `llevar` (in `llevar.i`) — add a CHECK to ensure that the target wearable item is possessed by the Hero; remove implicit taking from verb body.

### Bug Fixes

- [x] `desnudar` (in `llevar.i`) — the verb was implemented on `object` although it's a verb without parameters supposed to execute on `actor` instances; the verb has now been made a global verb.


## v0.1.3 (2021/09/12)

### New `xDesc` Attribute

Edit `examinar.i` by adding to EVERY THING the new `xDesc` attribute:

```alan
Add to every thing
  Has xDesc "".
```

And tweak the `examinar` verb so that when the `xDesc` attribute of an object being examined is not an empty string it will print `xDesc`, or fallback to the default message otherwise:

```alan
Add to every thing
  Verb examinar
    Check obj is examinable
      else "No puedes examinar" say the obj. "."
    Does
      If xDesc of obj <> ""
        then say xDesc of obj.
        else "No hay nada particular acerca de" say the obj. "."
      End if.
```

This new attribute (inspired by the StdLib 2) allows to easily provide actors and objects with static examine descriptions without having to override the `examine` verb on them via `Does Only`.



## v0.1.2 (2021/09/12)

### Meta Verbs

Convert "meta verbs" to real `META VERB`s, which in the original library were just ordinary verbs (probably the `META` keyword was not available back then).

- Added `espera.i`, and moved therein the 'wait' verb from `meta.i`, since it's not a meta-verb.
- `meta.i` renamed to `meta_sesión.i`, and all its verbs made META.
- `ayuda.i` renamed to `meta_ayuda.i`, and all its verbs made META.
- `brief.i` renamed to `meta_brief.i`, and all its verbs made META.


## v0.1.1 (2021/09/10)

### UTF-8 Encoding

In view of the imminent Alan 3.0Beta8 release, which introduces support for UTF-8 encoded files, all Alan sources, solution and transcript files are converted to UTF-8:

| extension |  file type  |  encoding |
|-----------|-------------|-----------|
| `*.alan`  | ALAN source | UTF-8-BOM |
| `*.i`     | ALAN module | UTF-8-BOM |
| `*.a3s`   | solution    | UTF-8-BOM |
| `*.a3t`   | transcript  | UTF-8     |


> **NOTE** — Although these ALAN files are now encoded in UTF-8, ALAN internally sill handles them as ISO-8859-1, therefore the supported characters set is still limited to valid Latin1 characters.


## v0.1.0 (2021/07/24)

### pALANte v0.6.1e

First official Alpha release of the new Spanish __ALAN Foundation Library__.

The library codebase of v0.1.0 is the same as that of the __[Librería pALANte v0.6.1e]__ (April, 2010) archived copy found at the [ALAN Goodies] project.

The following changes were applied to the original library:

- The library is renamed to "ALAN Foundation Library".
- Main module `std.i` renamed to `Library.i`.
- Converted `indice.txt` to `INDICE.md`, as markdown tables.
    + Deleted original `indice.txt`.
- Deleted `leeme.txt`, since its contents are available in main `README.md`.
- Deleted `ReadMe` (from original English library).
- Added `COPYING` file with the Artistic License 2.0, since this is a derivative work of the English ALAN Library.
- Aesthetic changes to code formatting.
- `ayuda.i`: Tweaked obsolete references in output text:
    + email: <thomas.nilsson@progindus.se> &rarr; <thomas@alanif.se>.
    + link: http://www.alanif.se/ &rarr; https://www.alanif.se.
    + author: Thomas Nilsson  &rarr; [Thomas Nilefalk]  (he recently changed his surname).
- Library comments were revised and freely edited:
    + Removed references to the old library and its changes.
    + Provided info according to the new project needs, instead.

The original library is here renamed from "pALANte" to "ALAN Foundation Library" in order to avoid confusion between the two, and in view of the upcoming changes and updates to make use of the new ALAN&nbsp;3 features that were introduced since 2010.

The rationale in renaming the library is that many of the upcoming changes will break backward compatibility, meaning that old adventures built for the __pALANte Library v0.6.1e__ won't work anymore with the new Spanish __ALAN Foundation Library__ by the time the latter has reached v1.0.0.

The __Foundation Library__ is not going to be just a series of updates to the old __Librería pALANte v0.6.1e__, but a full-fledged revisitation of its whole codebase, its driving design philosophy, and the way its modules are named and organized.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning 2.0.0]: https://semver.org "Semantic Versioning website"

[ALAN Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALAN Goodies repository on GitHub"

[Librería pALANte v0.6.1e]: https://github.com/alan-if/alan-goodies/tree/master/libs/pALANte_0.6.1e/ "View the original Librería pALANte v0.6.1e at the ALAN Goodies repository"

<!-- Issues & Discussion -->

[Discussion #14]: https://github.com/alan-if/alan-i18n/discussions/14 "See Discussion #14 — Libraries Version Scheme"

<!-- project files and folders -->

[English Foundation Library]: ../alan_en/Foundation/ "Navigate to the English Alan Library folder"

[VERSION_SCHEME.md]: ../../VERSION_SCHEME.md "Read 'Library Version Scheme' documentation"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->
