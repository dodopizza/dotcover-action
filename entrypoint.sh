#!/bin/bash -l
set -eu

# dotCoverCommand = $1
# configFile = $2

cmd="/bin/dotCover.sh $1 $2"

echo "$cmd"

sh -c "$cmd"