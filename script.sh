#!/bin/bash
CONFIG="config.conf"
if [ ! -f "$CONFIG" ]; then
    echo "config not found"
    exit 1
fi


source "$CONFIG"
echo "=====log cleaner started====="
echo "=====log directory : $LOG_DIR"
echo "=====archive directory : $LOG_ARCHIVE"
echo "=====days threshold : $DAYS"


mkdir -p "$LOG_ARCHIVE"
OLD_DIR=$(find "$LOG_DIR" -type f -mtime+"$DAYS")
if [ -z "$OLD_DIR" ]; then
    echo "no logs recently"
    exit 0
fi

for file in $OLD_DIR; do
    filename=$(basename "$file")
    timestamp=$(date +"%Y-%m-%d %H:%M")
    archive_file="$LOG_ARCHIVE/${filename}"_${timestamp}
    echo "archiving $file into $archive_file"
    tar -czf "$archive_file" "$file"
    rm "$file"
done
echo "=====log-cleaner --- done"