# Milestones in the History of U.S. Foreign Relations

Source data for [Milestones in the History of U.S. Foreign Relations](https://history.state.gov/milestones)

## Note to Readers

This publication, “Milestones in the History of U.S. Foreign Relations,” has been retired. The text remains online for reference purposes, but it is no longer being maintained or expanded.

Why retire “Milestones”? The Office of the Historian recently reviewed its online offerings and concluded that extensive resources would be needed to revise and expand this publication to meet the Office’s standards for accuracy and comprehensiveness. At the same time, the events described in the “Milestones” essays are amply covered by numerous respected secondary sources. Rather than duplicate these efforts, the Office of the Historian has decided to focus its resources on areas where it is uniquely suited to make a contribution, such as coverage of the Department of State’s institutional history. In keeping with the publication’s new status, it can now be found under “More Resources” in the site-wide menu.

## Build

1. Single `xar` file: The `collection.xconf` will only contain the index, not any triggers!
    ~~~shell
    ant
    ~~~

2. DEV environment: The replication triggers for the producer server are enabled in  `collection.xconf` and point to the dev server's replication service IP.
    ~~~shell
    ant xar-dev
    ~~~

3. PROD environment: Same as in 2. but for PROD destination
    ~~~shell
    ant xar-prod
    ~~~
