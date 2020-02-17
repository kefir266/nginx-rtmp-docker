#!/usr/bin/env bash

for i in {1..100}
do
   ffmpeg -i http://3.12.129.91/hls/test_hi.m3u8 -f null - &
done
