#!/gearlock/bin/bash
## For proper developer documentation, visit https://wiki.supreme-gamers.com/gearlock/developer-guide
# This script will be executed during boot-comp stage.
# You must delete this if you dont need it.
# Note: You don't need to manually deal with this file, GearLock will take care of it.

mount -o remount,rw /
mount -o remount,rw /system
enable_nativebridge
