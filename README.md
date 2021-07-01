# emcsyncbot
---
This repository is for storing GitHub Automation tools and actions used at NOAA-EMC.

### Syncing Forks
Presently implemented workflows including automatic syncing of forks of Github organizations into the NOAA-EMC organization.  These workflows are:
- [sync_jcsda.yaml](./github/workflows/sync_jcsda.yaml): This workflow syncs the `develop` branches from the following public [JCSDA](https://github.com/jcsda) repositories:
-- [saber](https://github.com/jcsda/saber)
-- [ioda](https://github.com/jcsda/ioda)
-- [ufo](https://github.com/jcsda/ufo)
-- [fv3-jedi](https://github.com/jcsda/fv3-jedi)
-- [fv3-bundle](https://github.com/jcsda/fv3-bundle)
