TEMPLATE = lib
TARGET = minizip

QT += core
QT -= gui

CONFIG += static

win*{
  DEFINES += WIN32
    INCLUDEPATH += ../../
    contains (QMAKE_TARGET.arch, x86_64){
      OUTPATH = ./win64
    }
  else{
    OUTPATH = ./win32
  }
}
else {
  INCLUDEPATH += ../zlib/linux32/include
    linux-*-64 {
      OUTPATH = ./linux64
    }
  else {
    linux* {
      OUTPATH = ./linux32
    }
    mac*{
      OUTPATH = ./mac32
    }
    android {
      OUTPATH = ./android
    }
  }
}

CONFIG( debug, debug|release ) {
  DEFINES *= _DEBUG
  DESTDIR = $${OUTPATH}/debug
}
else{
  DEFINES *= NDEBUG
  DESTDIR = $${OUTPATH}/release
}

include ( minizip.pri )

