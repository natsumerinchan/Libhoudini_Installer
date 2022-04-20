#!/gearlock/bin/bash
## For proper developer documentation, visit https://wiki.supreme-gamers.com/gearlock/developer-guide
# This script will be executed during boot-comp stage.
# You must delete this if you dont need it.
# Note: You don't need to manually deal with this file, GearLock will take care of it.

if test -d "$SYSTEM_DIR/lib64/hw"; then
	SYSTEM_ARCH=x86_64
else
	SYSTEM_ARCH=x86
fi

if test "$SYSTEM_ARCH" != "x86_64"; then
	enable_nativebridge
else
    if test "$sdk" -ge "26"; then
            enable_nativebridge
    else
            enable_nativebridge
            enable_nativebridge 64
    fi  
fi
