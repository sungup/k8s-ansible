#!/usr/bin/env bash

# 1. Clearing the Ubuntu page cache
echo 1 > /proc/sys/vm/drop_caches

free -w -h

# 2. Clearing Ubuntu dentries and inodes
echo 2 > /proc/sys/vm/drop_caches

# 3. Clearing the archived old logs
rm -rf /var/log/*.gz

# 4. Clearing the old journal logs
journalctl --vacuum-time=2d
