#!/bin/sh
/usr/local/bin/rec_radiko.sh $1 $2 /usr/volume $3
aws s3 cp /usr/volume $4 --recursive
