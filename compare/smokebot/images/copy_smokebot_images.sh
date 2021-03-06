#!/bin/bash
ROOT=$1

CURDIR=`pwd`
if [ "$ROOT" == "" ]; then
  cd ../../../..
  ROOT=`pwd`
fi


cd $ROOT/fds
FDSREPO=`pwd`
FDSREVISION=`git describe --dirty --long`

cd $ROOT/smv
SMVREPO=`pwd`
SMVREVISION=`git describe --dirty --long`

cd $CURDIR
cp $SMVREPO/Manuals/SMV_User_Guide/SCRIPT_FIGURES/*.png user/.
echo $FDSREVISION > user/FDSREVISION
echo $SMVREVISION > user/SMVREVISION

cp $SMVREPO/Manuals/SMV_Verification_Guide/SCRIPT_FIGURES/*.png verification/.
echo $FDSREVISION > verification/FDSREVISION
echo $SMVREVISION > verification/SMVREVISION




