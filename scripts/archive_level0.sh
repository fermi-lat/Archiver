#!/bin/bash -vxeu
targetDate=$(date -u -d "${baseDate} 7 days ago" -I)
# Date-related part of the path in the fcopy archive.
datePath=$(date -u -d "${targetDate}" +"%Y/%m/%j.%m.%d.%a")
# Date-related part of the tar file name.
dateName=$(echo ${datePath} | sed -e "s+/+-+g")
cd "${archiveRoot}"
tar cf "${astoreRoot}/FOS-level0-src0077-${dateName}-0.tar" "level0/src0077/${datePath}"
touch "level0/src0077/${datePath}/archive_done"
