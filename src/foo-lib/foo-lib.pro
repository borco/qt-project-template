TEMPLATE = lib

SOURCES += \
    foo/dummy.cpp

HEADERS += \
    foo/dummy.h \
    foo_lib.h

DEFINES += FOO_LIBRARY

DESTDIR = $$OUT_PWD/../../bin

