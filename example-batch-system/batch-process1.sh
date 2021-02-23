#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    WORDCOUNT="$(wc -w "${f}" | cut -d ' ' -f 1)"
    echo "Processing $f file..."
    echo "$WORDCOUNT"
  fi
done

