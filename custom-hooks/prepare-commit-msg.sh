#!/bin/bash

# Result will be output in place of the default commit message on running git commit
current_branch=`git rev-parse --abbrev-ref HEAD`

story_type=""
footer_note=""

if [[ $current_branch =~ ^ch ]]; then
  story_type="chore"
  footer_note="please don't ever use Finishes"
elif [[ $current_branch =~ ^ft ]]; then
  story_type="feature"
elif [[ $current_branch =~ ^bg ]]; then
  story_type="bug"
fi

chore_commit_message_sample="
#Please use the following commit message format for chores!!
#
#
# 165055711-<type>(${story_type}Scope): short head for the $story_type
# 
# - short line about the changes you added(in present tense)
# - another change here
# - another change here too
# 
# [Starts #165055711](${footer_note})
"
echo "$chore_commit_message_sample" > $1
