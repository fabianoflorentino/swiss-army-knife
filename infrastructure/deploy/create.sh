#!/usr/bin/env sh

HELP="
Usage:

--create    Create a new tree directory to deploy
--delete    Delete directories
--list      Show modules created

Ex:

./create.sh --create sample
"

case $1 in

    --create)
      cp -rf ./sample $2
      cp -rf ./modules/sample ./modules/$2
      ;;
    --delete)
      rm -rf ./$2
      rm -rf ./modules/$2
      ;;
    --list)
      ls -l ./$2
      ls -l ./modules/$2
      ;;
    --help)
      echo -e "${HELP}"
      ;;
    *)
      echo -e "${HELP}"
      ;;

esac