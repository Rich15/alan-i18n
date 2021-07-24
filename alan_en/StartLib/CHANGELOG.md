# Starter Library ChangeLog

This is the ChangeLog for the __ALAN Starter Library__, English version.

For the ChangeLog of the original __[ALAN Library v0.6.2]__ (from which this library was derived) see the archived [`ChangeLog`][ChangeLog] file hosted at the __[ALAN Goodies]__ project.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2" -->

- [Version Scheme Info](#version-scheme-info)
- [Beta Releases](#beta-releases)
    - [v0.1.0 \(2021/07/24\)](#v010-20210724)

<!-- /MarkdownTOC -->

-----

# Version Scheme Info

The __ALAN Starter Library__ adopts __[Semantic Versioning 2.0.0]__ as its versioning scheme.

Each release is defined by a `MAJOR.MINOR.PATCH` triplet, consisting of three dot-separated numeric segments which are incremented in a meaningful way:

1. __MAJOR__ version indicates backwards compatibility breaking changes.
2. __MINOR__ version indicates new functionality that is backwards compatible.
3. __PATCH__ version indicates backwards compatible changes and bug fixes to the pre-existing code.

Basically, an author should be able to look at the version number of a new library release and determine whether its adoption in a pre-existing adventure requires code adjustments (MAJOR change), or if it's safe to adopt it without having to tweak the adventure code (MINOR and PATCH changes).

MINOR changes indicate that new library features are available, but their fruition (which is entirely optional) requires altering the original adventure code.

MAJOR changes always require tweaking an adventure code, for some parts of the library have undergone significant changes that need to be mirrored in adventures written for a previous library version.

PATCH changes usually deal with typos, bugs fixes, or other type of improvements that don't require altering the code of adventures.


> **WARNING!** — The Starter Library is currently in Beta stage (`v0.X.Y`), so the above rules are not yet enforceable until `v1.0.0` is available.
> For the whole duration of the `v0.X.Y` cycle, MINOR version bumps should be interpreted as if they were MAJOR changes (i.e. backwards compatibility breaking), and PATCH bumps as being MINOR or PATCH changes (their distinction is not important during Beta work).
>
> This arrangement was decided upon in order to avoid introducing too many MAJOR version bumps in the new library, since in the early stages updating the library to exploit new ALAN features will entail many breaking changes, whereas after the `v1.0.0` stable release these should be more sporadic —  i.e. we wanted to prevent ending up having something like `StartLib v302.60.0`, which would look ridiculous.
>
> For more info on the topic, see/join [Discussion #14].


# Beta Releases

## v0.1.0 (2021/07/24)

First official Alpha release of the new __ALAN Starter Library__.

The library codebase of v0.1.0 is the same as that of the __[ALAN Library v0.6.2]__ (Nov. 2007) archived copy hosted at the [ALAN Goodies] project, which itself included some minor tweaks by [Tristano Ajmone] to ensure compatibility with the ALAN Beta7, plus some aesthetic changes, all of which are thereof documented, along with the original [`ChangeLog`][ChangeLog] file.

The following changes were applied to the original library:

- The library is renamed to "ALAN Starter Library".
- Main module `std.i` renamed to `StartLib.i`.
- Deleted original `README.md`/`ReadMe`.
- Deleted `index.txt`.
- Adapted `NOTES.md` and `INDEX.md` according to changes and new needs.
- Aesthetic changes to code formatting.
- Library comments were revised and freely edited:
    + Removed references to the old library and its changes.
    + Provided info according to the new project needs, instead.

The original library is here renamed from "Alan Library" to "ALAN Starter Library" in order to avoid confusion between the two, and in view of the upcoming changes and updates to make use of the new ALAN&nbsp;3 features that were introduced since 2007.

The rationale in renaming the library is that many of the upcoming changes will break backward compatibility, meaning that old adventures built for the __ALAN Library v0.6.x__ won't work anymore with the new __ALAN Starter Library__ by the time the latter has reached v1.0.0.

The __Starter Library__ is not going to be just a series of updates to the old __ALAN Library v0.6.x__, but a full-fledged revisitation of its whole codebase, its driving design philosophy, and the way its modules are named and organized.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning 2.0.0]: https://semver.org "Semantic Versioning website"

[ALAN Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALAN Goodies repository on GitHub"

[ALAN Library v0.6.2]: https://github.com/alan-if/alan-goodies/tree/master/libs/ALAN-Library_0.6 "View the original ALAN Library v0.6.2 at the ALAN Goodies repository"

[ChangeLog]: https://github.com/alan-if/alan-goodies/blob/master/libs/ALAN-Library_0.6/ChangeLog "View ALAN Library v0.6.2 ChangeLog at the ALAN Goodies project"

<!-- Issues & Discussion -->

[Discussion #14]: https://github.com/alan-if/alan-i18n/discussions/14 "See Discussion #14 — Libraries Version Scheme"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->