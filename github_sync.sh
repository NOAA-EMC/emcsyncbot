#!/bin/bash

set -eu

# User inputs.
ORGANIZATION=$1
REPOSITORY=$2
BRANCH=$3

# Set in upstream environment.
# WORKFLOW_USER
# WORKFLOW_EMAIL
# WORKFLOW_TOKEN

# Defaults.
FORK_ORGANIZATION=${FORK_ORGANIZATION:-"noaa-emc"}

cd ${REPOSITORY}-${BRANCH}

git config --global user.name  "${WORKFLOW_USER}"
git config --global user.email "${WORKFLOW_EMAIL}"

echo -e "\nAdding remotes ..."
git remote add upstream https://github.com/${ORGANIZATION}/${REPOSITORY}.git

echo -e "\nRemotes added:"
git remote -v
git fetch upstream ${BRANCH}

LOCAL_COMMIT_HASH=$(git rev-parse ${BRANCH})
UPSTREAM_COMMIT_HASH=$(git rev-parse upstream/${BRANCH})

if [[ "${LOCAL_COMMIT_HASH}" == "${UPSTREAM_COMMIT_HASH}" ]]; then

  echo -e "\nNo new commits to sync"

else

  echo -e"\nNew commits being synced:"

  git log upstream/${BRANCH} "${LOCAL_COMMIT_HASH}"..HEAD --pretty=oneline

  echo -e "\nSyncing ..."
  git pull --no-edit upstream ${BRANCH}
  echo -e "\nSync successful"

  git config --local --unset-all "http.https://github.com/.extraheader"

  echo -e "\nPushing branch to origin ..."
  git push https://${WORKFLOW_USER}:${WORKFLOW_TOKEN}@github.com/${FORK_ORGANIZATION}/${REPOSITORY}.git $GITHUB_REF
  echo -e "\nPush successful"

fi

exit 0
