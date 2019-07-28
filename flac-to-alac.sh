#! /bin/bash

# flac-to-alac.sh
# sheldon woodward
# july 27, 2019

# get the input and output directories
FLAC_DIR=$1
ALAC_DIR=$2
# change to the FLAC directory
cd $FLAC_DIR
# convert every FLAC file to ALAC and embed the album artwork
for f in *.flac
do
    # audio conversion
    ffmpeg -i "$f" -vn -c:a alac -y "$ALAC_DIR/${f%.flac}.m4a" $ALAC_DIR/folder.png
    # embed the artwork
    # atomicparsley "$ALAC_DIR/${f%.flac}.m4a" --artwork $ALAC_DIR/cover.png --overWrite
done
# remove the extracted album artwork
# rm $ALAC_DIR/cover.png
