#include <string.h>
#include <stdarg.h>
#include <stdio.h>
#include <unistd.h>

void ft_putchar(char x)
{
	write(1, &x, 1);
}


char	*ft_percent()
{


}

int ft_printf(const char *input, ...)
{
	char *save;

	save = ft_strdup(input);
	

}


int	main()
{
	char __char = 's';
	char	*string = "string";
	char x;

	char	*asd = "!!!!";
	printf("! //baslangic// %d  //orta// %s //son// !",__char, string);
}