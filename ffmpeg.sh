#!/bin/bash
#convert .m4a to .wav files
for entry in *.m4a
do
  filename=$(basename -- "$entry")
  filename="${filename%.*}"
  ffmpeg -i "${entry}" "${filename}.wav";
done

# convert .wav to 16khz 16 bit wav
mkdir temp
temp_dir=./temp
for i in *.wav; do
  ffmpeg -i ${i} -acodec pcm_s16le -ac 1 -ar 16000 ${temp_dir}/${i};
done

# convert .wav to 22khz 16 bit wav
mkdir temp
temp_dir=./temp
for i in *.wav; do
  ffmpeg -i ${i} -acodec pcm_s16le -ac 1 -ar 22050 ${temp_dir}/${i};
done
