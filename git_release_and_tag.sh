#!/bin/bash

function update_release {
    cd "$@"
    git checkout -B release
    git merge master
    git push origin release
    git checkout -B master
    cd ..
}

echo "updating release"


for directory in */
do
    echo "starting work on $directory"
	update_release $directory
done

git checkout -B release
git merge master
git push origin release
git checkout -B master


exit 0