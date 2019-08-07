lessThan(QT_MAJOR_VERSION, 5):error("You need at least Qt 5.12 to build PokeFinder")
equals(QT_MAJOR_VERSION, 5):lessThan(QT_MINOR_VERSION, 12):error("You need at least Qt 5.12 to build PokeFinder")

QT += quick svg
CONFIG += c++1z lrelease embed_translations

TARGET = PokeFinder
TEMPLATE = app
VERSION = 2.4.0
QMAKE_TARGET_DESCRIPTION = PokeFinder
QMAKE_TARGET_COPYRIGHT = Admiral_Fish

RC_ICONS += Images/pokefinder.ico
ICON += Images/pokefinder.icns

DEFINES += QT_DEPRECATED_WARNINGS

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    qml.qrc

SOURCES += \
    main.cpp
