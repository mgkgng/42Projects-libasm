#include "libasm.h"

int main() {
	extern int ft_strlen();
	extern char *ft_strcpy();
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