#!/bin/bash

if [ -f /boot/.s3cfg ]; then
   mv /boot/.s3cfg /home/pi
fi
