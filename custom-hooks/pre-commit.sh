#!/bin/bash

current_branch=`git rev-parse --abbrev-ref HEAD`

if [ $current_branch = 'develop' ]; then
  echo "You do not have permmision to commit on develop branch."
  exit 1
fi
