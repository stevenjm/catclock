catclock: catclock.o
	9l -o catclock catclock.o

catclock.o: catclock.c
	9c catclock.c

install: catclock
	install catclock /usr/local/plan9/bin/catclock

uninstall:
	[ ! -e /usr/local/plan9/bin/catclock ] || rm /usr/local/plan9/bin/catclock

clean:
	rm -f catclock catclock.o
