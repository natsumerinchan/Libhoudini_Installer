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

# Show sdk version and device architecture

if test -d "$SYSTEM_DIR/lib64/hw"; then
	SYSTEM_ARCH=x86_64
else
	SYSTEM_ARCH=x86
fi

geco "-SDK: $SDK"
geco "-Platform: $SYSTEM_ARCH"

# Ensure Android version
if test "$SDK" -lt "23"; then
	geco "\n[!!!] This package only supports Android6(sdk23)-Android9(sdk28)" && exit 101
fi

if test "$SDK" -gt "28"; then
	geco "\n[!!!] This package only supports Android6(sdk23)-Android9(sdk28)" && exit 101
fi

# Check if /system is writable
! touch -c "$SYSTEM_DIR/lib" >/dev/null 2>&1 && geco "[!!!] $SYSTEM_DIR is not writable, did you ${PINK}SuperCharge${RC} it yet ?" && exit 101

# Before installation
read -rn1 -p "$(geco "++++ Do you sure you want to install this package? ? [y/${GREEN}N${RC}]") " c
test "${c,,}" != 'y' && exit 101 #(exit-code ref: https://wiki.supreme-gamers.com/gearlock/developer-guide/#install-sh-exit-code)

# Copy files
if test "$SYSTEM_ARCH" == "x86_64"; then
    geco "+ Merging x86_64 files in your operating-system"
    gclone "$BD/x86_64/" "/data/" # You must use quotes " " if any of your file-name contains *spaces or special characters
else
    geco "+ Merging x86 files in your operating-system"
    gclone "$BD/x86/" "/data/" # You must use quotes " " if any of your file-name contains *spaces or special characters
fi