#!/bin/bash
branch_name="bg-chore-summary"
print_message() {
  story_type=$1

  echo "This is a ${story_type} type branch"
}
if [[ $branch_name =~ ^ch ]];
then
  print_message "chore"
elif [[ $branch_name =~ ^ft ]];
then
print_message "feature"
elif [[ $branch_name =~ ^bg ]];
then
  print_message "bug"
fi
