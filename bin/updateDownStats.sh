#!/bin/sh
# Based on: https://github.com/asstermo/asstermo.github.io/blob/master/bin/updateDownStats.sh
#
# crontab -e
#
#  0  *   *   *   *     /home/$USER/github/blueCFD/Core/bin/updateDownStats.sh


cd ${0%/*} || exit 1

git pull || exit 1

export filename=../_includes/downstats.md

./updateDownloads.py > $filename

if ! git diff --quiet --exit-code -- $filename; then

(
  git add $filename && \
  git commit -q -m "Download stats updated automatically, based on Github API." && \
  git push
) > log.git 2>&1

if [ $? -ne 0 ]
then
  cat log.git
fi

fi
