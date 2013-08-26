CC      ?= cc
SRC      = ${wildcard *.c}
OUT      = ${SRC:.c=}
CFLAGS  := $(shell pkg-config --cflags gstreamer-0.10 \
	gstreamer-pbutils-0.10 gstreamer-interfaces-0.10  \
	gtk+-2.0 clutter-gst-2.0)
LDFLAGS := $(shell pkg-config --libs   gstreamer-0.10 \
	gstreamer-pbutils-0.10 gstreamer-interfaces-0.10  \
	gtk+-2.0 clutter-gst-2.0)

all: ${OUT}

${OUT}:
	${CC} -o $@ $@.c ${CFLAGS} ${LDFLAGS}

clean:
	${RM} ${OUT}

.PHONY: all clean
