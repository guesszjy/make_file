.PYTHON:all clean

all:
	make -C lcd
	make -C usb
	make -C media
	make -C app

clean:
	rm -rf app/player.o mp3/mp3
	rm -rf usb/usb.o usb/usb.d
	rm -rf lcd/lcd.o lcd/lcd.d
	rm -rf media/media.o media/media.d
