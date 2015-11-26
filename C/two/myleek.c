#include "apue.h"

int main(void)
{
	if (lseek(STDIN_FILENO, 0, SEEK_CUR) == -1)
		printf("cannot lseek\n");
	else
		printf("lseek OK\n");
	exit(0);
}
