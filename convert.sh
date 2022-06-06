#! /bin/bash

counter=1
for dir in `ls -d */ `
do
    ls $dir | while read item
    do
        ffmpeg -i "$dir/$item" -vf "scale=iw/2:ih/2" "$dir/$counter.mp4"
        echo "$item from $dir done.";
        let "counter++"
    done
    counter=1
done
