#!/bin/bash

CONTEST_NAME="CFR/CFR740"
PROBLEMS=(A B C D E F G)

if [ -d "$CONTEST_NAME" ]; then
  echo "Direction existed"
  exit 1
fi

mkdir $CONTEST_NAME

cd $CONTEST_NAME
for problemName in "${PROBLEMS[@]}" 
do 
  mkdir $problemName
  cd $problemName

  wget https://raw.githubusercontent.com/lioaslan/Competitive-Training/master/sample.cpp
  mv sample.cpp data.cpp

  touch data.inp

  cd ..
done 

echo "Create contest successfully"
