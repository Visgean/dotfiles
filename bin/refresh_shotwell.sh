#!/bin/bash

# under linux, use this to launch as many convert as your processor core number
#MAX_PROCESSES=`cat /proc/cpuinfo |grep ^processor | wc -l`
# or use a static value
MAX_PROCESSES=4

sqlite3 ~/.local/share/shotwell/data/photo.db "select id||' '||filename from PhotoTable order by timestamp desc" | 
  while read id filename; do
      for size in 128 360; do
      tf=$(printf ~/.shotwell/thumbs/thumbs${size}/thumb%016x.jpg $id);
      test -e "$tf" ||  {
              echo "Generating thumb for $filename ($tf)";
              convert "$filename" -auto-orient -thumbnail ${size}x${size} $tf &
          RUNNING="`jobs -p |wc -l`"
          while [ "$RUNNING" -ge "$MAX_PROCESSES" ]
          do
          sleep 0.3
          RUNNING="`jobs -p |wc -l`"
          done
      }
      done
  done
