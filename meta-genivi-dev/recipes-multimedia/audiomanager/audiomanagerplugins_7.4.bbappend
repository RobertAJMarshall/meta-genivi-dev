FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI_append = "\
    file://0001-Porting-Pulse-Routing-Interface-from-AM-v1.x-to-AM-v.patch \
    file://0001-Porting-Pulse-Control-Interface-from-AM-v1.x-to-AM-v.patch \
    file://0001-Fix-issue-not-to-find-audiomanager-include-path.patch \
    file://0001-fix-for-amplugins-compile.patch \
"

EXTRA_OECMAKE += "\ 
    -DWITH_PULSE_CONTROL_PLUGIN=ON \
    -DWITH_TEST_CONTROLLER=OFF \
    -DWITH_ENABLED_IPC=DBUS \
    -DWITH_DATABASE_STORAGE=OFF \
    -DWITH_COMMAND_INTERFACE_CAPI=OFF \
    -DWITH_COMMAND_INTERFACE_DBUS=ON \
    -DWITH_ROUTING_INTERFACE_CAPI=OFF \
    -DWITH_ROUTING_INTERFACE_DBUS=ON \
    -DWITH_ROUTING_INTERFACE_PULSE=ON \
"
