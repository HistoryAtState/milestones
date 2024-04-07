# Milestones in the History of U.S. Foreign Relations

[![exist-db CI](https://github.com/HistoryAtState/milestones/actions/workflows/build.yml/badge.svg)](https://github.com/HistoryAtState/milestones/actions/workflows/build.yml)

Source data for [Milestones in the History of U.S. Foreign Relations](https://history.state.gov/milestones)

## Note to Readers

This publication, “Milestones in the History of U.S. Foreign Relations,” has been retired. The text remains online for reference purposes, but it is no longer being maintained or expanded.

Why retire “Milestones”? The Office of the Historian recently reviewed its online offerings and concluded that extensive resources would be needed to revise and expand this publication to meet the Office’s standards for accuracy and comprehensiveness. At the same time, the events described in the “Milestones” essays are amply covered by numerous respected secondary sources. Rather than duplicate these efforts, the Office of the Historian has decided to focus its resources on areas where it is uniquely suited to make a contribution, such as coverage of the Department of State’s institutional history. In keeping with the publication’s new status, it can now be found under “More Resources” in the site-wide menu.

## Build

1. Single `xar` file: The `collection.xconf` will only contain the index, not any triggers!

    ```shell
    ant
    ```

    1. Since Releases have been automated when building locally you might want to supply your own version number (e.g. `X.X.X`) like this:

    ```shell
    ant -Dapp.version=X.X.X
    ```

## Release

Releases for this data package are automated. Any commit to the `master`` branch will trigger the release automation.

All commit message must conform to [Conventional Commit Messages](https://www.conventionalcommits.org/en/v1.0.0/) to determine semantic versioning of releases, please adhere to these conventions, like so:

| Commit message  | Release type |
|-----------------|--------------|
| `fix(pencil): stop graphite breaking when too much pressure applied` | Patch Release |
| `feat(pencil): add 'graphiteWidth' option` | ~~Minor~~ Feature Release |
| `perf(pencil): remove graphiteWidth option`<br/><br/>`BREAKING CHANGE: The graphiteWidth option has been removed.`<br/>`The default graphite width of 10mm is always used for performance reasons.` | ~~Major~~ Breaking Release |

When opening PRs commit messages are checked using commitlint.