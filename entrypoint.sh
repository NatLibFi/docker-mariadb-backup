#!/bin/sh
trap 'exit' 2
echo "Starting eternal sleep..."

while :
do
   sleep 10 &
   wait $!   
done