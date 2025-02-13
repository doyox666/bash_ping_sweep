#!/bin/bash

#MATCH YOUR SUBNET#
for i in {1..254}
do
    ping -c 1 10.10.16.$i |grep "64 bytes"|cut -d " " -f 4|tr  -d ":" &
done

wait
echo "Scan complete."
