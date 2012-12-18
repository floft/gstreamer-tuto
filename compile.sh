gcc $1.c -o $1 `pkg-config --cflags --libs gstreamer-0.10  gtk+-2.0` -lgstinterfaces-0.10
