#!/gearlock/bin/bash
## For proper developer documentation, visit https://wiki.supreme-gamers.com/gearlock/developer-guide
# Check `!zygote.sh` to configure your package functions or gearlock can also guide you during the build process

#####--- Import Functions ---#####
get_base_dir # Returns execution directory path in $BD variable
# get_net_stat
check_compat 7.2.22
HOUDINI_API=24
#####--- Import Functions ---#####

# Ensure compatible GearLock version
if test "$COMPAT" != "yes"; then
	geco "\n[!!!] Please update GearLock to install this package" && exit 101
fi

# Ensure Recovery mode
if test "$RECOVERY" != "yes"; then
	geco "\n[!!!] Please use Recovery mode to install this package" && exit 101
fi

# Check if /system is writable
mount -o remount,rw /
mount -o remount,rw /system
! touch -c "$SYSTEM_DIR/lib" >/dev/null 2>&1 && geco "[!!!] $SYSTEM_DIR is not writable, did you ${PINK}SuperCharge${RC} it yet ?" && exit 101

# Show sdk version and device architecture

if test -d "$SYSTEM_DIR/lib64/hw"; then
	SYSTEM_ARCH=x86_64
else
	SYSTEM_ARCH=x86
fi

geco "[INFO] -API_Level: $SDK"
geco "[INFO] -Platform: $SYSTEM_ARCH"

# Ensure Android version
if test "$SDK" -lt "$HOUDINI_API"; then
	geco "\n[!!!] API_Level could not lower than $HOUDINI_API." && exit 101
fi

# Check Built-in Arm Translation
if test -d "$SYSTEM_DIR/lib/arm"; then
	geco "\n[!!!] Arm Translation is exist!Please find a way to remove built-in one." && exit 101
else
	if test -d "$SYSTEM_DIR/lib64/arm64"; then
	    geco "\n[!!!] Arm Translation is exist!Please find a way to remove built-in one." && exit 101
	else
	    geco "\n[!!!] Built-in Arm Translation is not exist.You can continue."
	fi
fi

# Before installation
read -rn1 -p "$(geco "++++ Do you want to continue? ? [y/${GREEN}N${RC}]") " c
test "${c,,}" != 'y' && exit 101 #(exit-code ref: https://wiki.supreme-gamers.com/gearlock/developer-guide/#install-sh-exit-code)

# Copy files
if test "$SYSTEM_ARCH" == "x86_64"; then
    geco "+ Merging x86_64 files in your operating-system"
    gclone "$BD/x86_64/" "/data/" # You must use quotes " " if any of your file-name contains *spaces or special characters
else
    geco "+ Merging x86 files in your operating-system"
    gclone "$BD/x86/" "/data/" # You must use quotes " " if any of your file-name contains *spaces or special characters
fi
