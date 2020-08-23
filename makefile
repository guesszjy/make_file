.PHONY:all clean
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH = $(BUILD_ROOT)/include

all:
	make -C lcd
	make -C usb
	make -C media
	make -C math
	make -C app

clean:
	rm -rf app/link_obj app/dep app/lib_obj mp3
	rm -rf lib/*.a lib/*.so

install:
	cp mp3 /usr/bin
	cp lib/libmath.so /usr/lib64
	cp lib/ext_lib/librmvb.so /usr/lib64

uninstall:
	rm -f /usr/bin/mp3
	rm -f /usr/lib64/libmath.so
	rm -f /usr/lib64/librmvb.so
