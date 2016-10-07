# Copyright (C) 2015-2016 GENIVI Alliance

LICENSE  = "MPL-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=9741c346eef56131163e13b9db1241b3"
SRC_URI = "git://github.com/GENIVI/connected-home"
SRCREV  = "1bd1ec84ff730c2c8872781aab4733a9ffd32f1e"

SUMMARY = "Connected Home"
DEPENDS = "qtbase qtdeclarative"


S = "${WORKDIR}/git"

inherit qmake5

APP = "com.genivi.gdp.connectedhome"
EXE = "qt-smart-demo"

include ics-apps.inc

# FILES_${PN} += "\
#     ${libdir}/systemd/user/* \
#     /opt/* \
#     /usr/share/applications/${APP}.app \
#     /usr/lib/systemd/user/${APP}.service \
#     "
