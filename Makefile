/etc/modprobe.d/no-beep.conf : Makefile blacklist-pcspkr.sh no-beep.conf
	bash blacklist-pcspkr.sh

.PHONY: shellcheck
shellcheck:
	shellcheck blacklist-pcspkr.sh

clean :
	sudo rm --force /etc/modprobe.d/no-beep.conf
