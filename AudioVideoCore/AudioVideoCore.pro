#-------------------------------------------------
#
# Project created by QtCreator 2020-03-23T14:11:21
#
#-------------------------------------------------

QT       += widgets multimedia

TARGET = AudioVideoCore
TEMPLATE = lib

DEFINES += AUDIOVIDEOCORE_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

DESTDIR += $$PWD/../lib/AudioVideoCore
MOC_DIR += $$PWD/../AudioVideoCore/temp
OBJECTS_DIR += $$PWD/../AudioVideoCore/temp
CONFIG += c++11

INCLUDEPATH += $$PWD/../thirdLibs/ffmpeg/include
LIBS += -L$$PWD/../thirdLibs/ffmpeg/libs/ -lavcodec -lavformat -lavutil

SOURCES += \
        AudioData.cpp \
        AudioDecodec.cpp \
        AudioPlayer.cpp \
        AudioPlayerThread.cpp

HEADERS += \
        AudioData.h \
        AudioDecodec.h \
        AudioPlayer.h \
        AudioPlayerThread.h \
        audiovideocore_global.h 

unix {
    target.path = /usr/lib
    INSTALLS += target
}