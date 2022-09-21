#include <unistd.h>
#include <stdio.h>

#define DELAY 750000

int main() {
	extern	ft_strlen();
	// extern	ft_strcpy();
	// extern	ft_strcmp();
	// extern	ft_write();
	// extern	ft_read();
	// extern	ft_strdup();

	printf("LIBASM TEST STARTS\n");
	
	usleep(DELAY);
	printf("=======================\n");
	printf("TESTING ft_strlen\n");
	printf("=======================\n");

	printf("%d..\n", ft_strlen("Hello world!"));

	return (0);
}