#!/gearlock/bin/bash
## For proper developer documentation, visit https://wiki.supreme-gamers.com/gearlock/developer-guide
##
# GEN_UNINS is disabled by default (auto uninstallation script generation)
# It logs all the files present inside your package `system` & `data` dir
# and merge that as a function with your custom `uninstall.sh`.
# 
# You can use different uninstallation combinations, please check the developer documentation to know more.
# 
# Note: You don't need to manually deal with this file, GearLock will take care of it.
# 
# Use `return` instead of `exit` to stop uninstallation for any error, GearLock will transform this whole file into a bash function.
# 
# Tip: $UNINS_SCRIPT variable is provided by GXPM which returns
# full path for the locally prepared uninstallation script.

geco "\n++ Deleting the Arm translation layer"

nout rm -rf "$SYSTEM_DIR/etc/houdini6_x.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini6_y.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini6_z.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini7_x.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini7_y.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini7_z.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini8_x.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini8_y.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini8_z.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini9_x.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini9_y.sfs"
nout rm -rf "$SYSTEM_DIR/etc/houdini9_z.sfs"