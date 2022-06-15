#!/bin/bash

PS3='Select Room: '
rooms='Living Dining Bed'

select room in $rooms
do 
  if [ $room == 'Living' ]
  then
    echo "Going to living room"
  fi
  echo "going to someplace other than the living room"
done;
