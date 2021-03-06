#!/bin/bash
REPO=$1

CURDIR=`pwd`
if [ "$REPO" == "" ]; then
  cd ../../../..
  REPO=`pwd`
  cd $CURDIR
fi

if [ ! -d  $REPO/fds ]; then
  echo "***error: $REPO/fds does not exist"
  exit
fi

echo getting fds repo revision
cd $REPO/fds
FDS_REPO=`pwd`
FDS_REVISION=`git describe --dirty --long`

if [ ! -d  $REPO/smv ]; then
  echo "***error: $REPO/smv does not exist"
  exit
fi

echo getting smv repo revision
cd $REPO/smv
SMV_REPO=`pwd`
SMV_REVISION=`git describe --dirty --long`

cd $CURDIR
echo copying FDS user guide figures
cp $FDS_REPO/Manuals/FDS_User_Guide/SCRIPT_FIGURES/*.png user/.
echo $FDS_REVISION > user/FDS_REVISION
echo $SMV_REVISION > user/SMV_REVISION

cd $CURDIR
echo copying FDS verificaiton guide figures
cp $FDS_REPO/Manuals/FDS_Verification_Guide/SCRIPT_FIGURES/*.png verification/.
echo $FDS_REVISION > verification/FDS_REVISION
echo $SMV_REVISION > verification/SMV_REVISION




