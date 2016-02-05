#!/usr/bin/env bash
until=0
((until += "$1"))
#echo -n "How many days ago? "
#read until
echo "Commits $until days ago:"
since=$((until+1))
git log --date=local --author "Cody" --since "$since days ago" --until "$until days ago" --pretty=oneline --abbrev-commit | sed "s/^......./-/"
