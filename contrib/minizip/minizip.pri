#minizip

#Header files
HEADERS +=  ./crypt.h \
            ./ioapi.h \
            ./mztools.h \
            ./unzip.h \
            ./zip.h

win*:HEADERS += ./iowin32.h

SOURCES +=  ./ioapi.c \
            ./mztools.c \
            ./unzip.c \
            ./zip.c

win*:SOURCES += ./iowin32.c

