#!/bin/bash
export  PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
DIR="test"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  echo "${DIR} Present"
  cd $DIR
  git pull https://github.com/palashkhamrai/$DIR.git

else 
  echo "Directory $DIR Not Present"
  git clone https://github.com/palashkhamrai/$DIR.git
  cd $DIR
fi

echo "Who I'm $SHELL"
