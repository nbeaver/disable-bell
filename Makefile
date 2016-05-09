/etc/modprobe.d/no-beep.conf : Makefile blacklist-pcspkr.sh no-beep.conf
	bash blacklist-pcspkr.sh

clean :
	sudo rm --force /etc/modprobe.d/no-beep.conf
