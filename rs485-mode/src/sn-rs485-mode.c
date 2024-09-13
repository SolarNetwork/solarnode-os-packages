/*
 * Linux RS485-mode ioctl utility.
 *
 * Adapted from https://gist.github.com/amarburg/07564916d8d32e20e6ae375c1c83a995
 * 
 * cc -o sn-rs485-mode sn-rs485-mode.c
 */

#include <stdlib.h>
#include <stdio.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <linux/serial.h>

/* RS485 ioctls: */
#define TIOCGRS485	0x542E
#define TIOCSRS485	0x542F

int main( int argc, char **argv )
{
	unsigned int i;
	char buf[80];

	if (argc < 2) {
		printf("Usage:	%s [port name] [0|1]\n", argv[0]);
		exit(0);
	}

	int enable = -1;
	int result = 0;
	char *port = argv[1];

	if (argc > 2) {
		enable = atoi(argv[2]);
	}

	int fd = open(port, O_RDWR);
	if (fd < 0) {
		fprintf(stderr, "Error opening port \"%s\" (%d): %s\n", port, errno, strerror(errno));
		exit(-1);
	}

	struct serial_rs485 rs485conf;

	if (ioctl(fd, TIOCGRS485, &rs485conf) < 0) {
		fprintf(stderr, "Error reading ioctl port (%d): %s\n",	 errno, strerror(errno));
		exit(-2);
	}

	printf("RS485 mode is currently %s\n", (rs485conf.flags & SER_RS485_ENABLED) ? "set" : "NOT set");

	if (enable >= 0) {
		if (enable) {
			printf("RS485 mode will be SET\n");
			rs485conf.flags |= SER_RS485_ENABLED | SER_RS485_RTS_ON_SEND;
		} else {
			printf("RS485 mode will be UNSET\n");
			rs485conf.flags &= ~SER_RS485_ENABLED;
		}
	
		if (ioctl(fd, TIOCSRS485, &rs485conf) < 0) {
			fprintf(stderr, "Error writing ioctl port (%d): %s\n",	 errno, strerror(errno));
			result = 1;
		}
	}

	if (close(fd) < 0) {
		fprintf( stderr, "Error closing port (%d): %s\n", errno, strerror( errno ));
		if (!result) {
			result = 2;
		}
	}

	exit(result);
}
