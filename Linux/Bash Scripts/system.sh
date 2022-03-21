#!/bin/bash

cat /proc/meminfo > ~/backups/freemem/free_mem.txt

df head -5 | >  ~/backups/diskuse/diskusage.txt 

lsof > ~/backups/openlist/open_list.txt

df -h > ~/backups/freedisk/free_disk.txt
