#!/bin/bash

# figure out the absolute path to the script being run a bit
# non-obvious, the ${0%/*} pulls the path out of $0, cd's into the
# specified directory, then uses $PWD to figure out where that
# directory lives - and all this in a subshell, so we don't affect
# $PWD

GAMEROOT=$(cd "${0%/*}" && echo $PWD)

#determine platform
UNAME=`uname`
if [ "$UNAME" == "Darwin" ]; then
   # prepend our lib path to LD_LIBRARY_PATH
   export DYLD_LIBRARY_PATH=${GAMEROOT}:$DYLD_LIBRARY_PATH
elif [ "$UNAME" == "Linux" ]; then
   # prepend our lib path to LD_LIBRARY_PATH
   export LD_LIBRARY_PATH=${GAMEROOT}:$LD_LIBRARY_PATH
fi

if [ -z $GAMEEXE ]; then
	if [ "$UNAME" == "Darwin" ]; then
	  GAMEEXE=hl_osx
	elif [ "$UNAME" == "Linux" ]; then
	  GAMEEXE=hl_linux
	fi
fi

ulimit -n 2048

# and launch the game
cd "$GAMEROOT"

STATUS=42
while [ $STATUS -eq 42 ]; do
	${DEBUGGER} "${GAMEROOT}"/${GAMEEXE} $@
	STATUS=$?
done
exit $STATUS
