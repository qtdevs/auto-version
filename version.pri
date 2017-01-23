INCLUDEPATH += $$PWD
exists($$PWD/version.h) {
    HEADERS += $$PWD/version.h
}
# exists($$PWD/verdefs.pri) {
#     include($$PWD/verdefs.pri)
# }

win {
    version.commands = python.exe $$PWD/private/version
} else {
    version.commands = $$PWD/private/version
}

version.target = versionfile
QMAKE_EXTRA_TARGETS += version
PRE_TARGETDEPS = versionfile
