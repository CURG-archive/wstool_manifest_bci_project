#!/bin/bash

function check_sub_dir_status {
    cd "$@"
    git diff --quiet || echo "There are uncommitted changes in $1"
    cd ..
}

echo "looking for uncommitted changes"


for directory in */
do
	check_sub_dir_status $directory
done

echo "it is still possible that there are committed changes that have not been pushed to github"
exit 0
