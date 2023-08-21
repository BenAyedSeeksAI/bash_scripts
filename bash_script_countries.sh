#!/bin/bash
TUNISIA_PATH=/home/mfba/Documents/linuxCmnd/scripting/tunisia
ALGERIA_PATH=/home/mfba/Documents/linuxCmnd/scripting/algeria
ORIGINAL_PATH=/home/mfba/Documents/linuxCmnd/scripting
MODE=$1
COUNTRY=$2
init(){
  echo "do this do that"
}
funcky(){
  local country=$1
  echo "we need to go to the country of $country"
  if [ "$country" == "algeria" ]; then
      local test=$(expr $(ls $TUNISIA_PATH -l | wc -l) - 1)
      if [ "$test" -gt 0 ]; then
          echo 'valid argument'
          mv "$TUNISIA_PATH"/* "$ALGERIA_PATH"/
      fi
  elif [ "$country" == "tunisia" ]; then
      local test=$(expr $(ls $ALGERIA_PATH -l | wc -l) - 1)
      if [ "$test" -gt 0 ]; then
          echo 'valid argument'
          mv "$ALGERIA_PATH"/* "$TUNISIA_PATH"/
      fi
  fi
}

cd $TUNISIA_PATH
ls

cd $ALGERIA_PATH
ls

cd $ORIGINAL_PATH
echo  "we're in the $MODE mode"
if [ "$MODE" == "init" ]; then
    init
elif [ "$MODE" == "travel" ]; then
    funcky $COUNTRY
fi
