#!/bin/sh

export PREFIX=/usr
export DESTDIR=/mnt/dest

export CFLAGS="-I. -fPIC $CFLAGS"

cp config.h.preconf config.h
clang $CFLAGS $LDFLAGS -c fts.c -o fts.o
llvm-ar rcs libfts.a fts.o

install -m755 libfts.a $DESTDIR/$PREFIX/lib/
install -m644 fts.h $DESTDIR/$PREFIX/include/


