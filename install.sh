#!/gearlock/bin/bash
## For proper developer documentation, visit https://wiki.supreme-gamers.com/gearlock/developer-guide
# Check `!zygote.sh` to configure your package functions or gearlock can also guide you during the build process

#####--- Import Functions ---#####
get_base_dir # Returns execution directory path in $BD variable
# get_net_stat
check_compat 7.2.22
#####--- Import Functions ---#####

# Ensure compatible GearLock version
if test "$COMPAT" != "yes"; then
	geco "\n[!!!] Please update GearLock to install this package" && exit 101
fi

# Ensure Recovery mode
if test "$RECOVERY" != "yes"; then
	geco "\n[!!!] Please use Recovery mode to install this package" && exit 101
fi

# Ensure Android version
if test "$SDK" != "28"; then
	geco "\n[!!!] This package only support Android9!" && exit 101
fi

# Ensure Device Architecture
if test "$HOST_ARCH" != "x86_64"; then
	geco "\n[!!!] This package only support x86_64 devices!" && exit 101
fi

# Check if /system is writable
! touch -c "$SYSTEM_DIR/lib" >/dev/null 2>&1 && geco "[!!!] $SYSTEM_DIR is not writable, did you ${PINK}SuperCharge${RC} it yet ?" && exit 101

# Delete the original arm translation layer
nout rm -rf "$SYSTEM_DIR/bin/houdini"
nout rm -rf "$SYSTEM_DIR/bin/arm/linker"
nout rm -rf "$SYSTEM_DIR/lib/libhoudini.so"
nout rm -rf "$SYSTEM_DIR/lib/arm/*"
nout rm -rf "$SYSTEM_DIR/vendor/lib/libhoudini.so"
nout rm -rf "$SYSTEM_DIR/vendor/etc/binfmt_misc/*"

# Copy files
geco "+ Merging files in your operating-system"
gclone "$BD/system/" "$SYSTEM_DIR" # You must use quotes " " if any of your file-name contains *spaces or special characters