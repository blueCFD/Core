#!/bin/sh -e
# Based on: https://github.com/asstermo/asstermo.github.io/blob/master/bin/updateDownStats.sh
#
# crontab -e
#
#  0  *   *   *   *     /home/$USER/github/blueCFD/Core/bin/updateDownStats.sh


cd ${0%/*} || exit 1

git pull

filename=../_includes/downstats.md

./updateDownloads.py > $filename

if ! git diff --quiet --exit-code -- $filename; then

  git add $filename && \
  git commit -m "Download stats updated automatically, based on Github API." && \
  git pull && \
  git push

fi
