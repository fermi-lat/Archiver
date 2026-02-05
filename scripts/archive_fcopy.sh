#!/bin/bash -vxeu
baseDate=$1
targetDate=$(date -u -d "${baseDate} 1 day ago" -I)
# Date-related part of the path in the fcopy archive.
datePath=$(date -u -d "${targetDate}" +"%Y/%m/%j.%m.%d.%a")
# Date-related part of the tar file name.
dateName=$(echo ${datePath} | sed -e "s+/+-+g")
cd "${archiveRoot}"
ls -l "fcopy/${datePath}"
# uncomment this for prod:
#tar cf "${astoreRoot}/FOS-fcopy-${dateName}-0.tar" "fcopy/${datePath}"
#touch "fcopy/${datePath}/archive_done"