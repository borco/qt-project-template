QT += core gui widgets svg

TEMPLATE = app

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

DESTDIR = $$OUT_PWD/../../bin

macx: {
    ICON = foo-app.icns
}

LIBS += -L$$DESTDIR -lfoo-lib

INCLUDEPATH += $$PWD/../foo-lib
DEPENDPATH += $$PWD/../foo-lib
