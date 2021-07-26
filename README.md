# emcsyncbot
---
This repository is for storing GitHub Automation tools and actions used at [NOAA-EMC](https://github.com/noaa-emc).

### Syncing Forks
Presently implemented workflows including automatic syncing of forks of Github organizations into the NOAA-EMC organization.  These workflows are:
* [sync_jcsda.yaml](./.github/workflows/sync_jcsda.yaml): This workflow syncs the `develop` branches in [NOAA-EMC](https://github.com/noaa-emc) fork from the following public [JCSDA](https://github.com/jcsda) repositories :
  * [oops](https://github.com/jcsda/oops)
  * [saber](https://github.com/jcsda/saber)
  * [ioda](https://github.com/jcsda/ioda)
  * [ufo](https://github.com/jcsda/ufo)
  * [fv3-jedi](https://github.com/jcsda/fv3-jedi)
  * [fv3-bundle](https://github.com/jcsda/fv3-bundle)
* [sync_hycom.yaml](./.github/workflows/sync_hycom.yaml): This workflow syncs the `master` branches in [NOAA-EMC](https://github.com/noaa-emc) fork from the following public [HYCOM](https://github.com/hycom) repositories :
  * [HYCOM-src](https://github.com/hycom/hycom-src)
