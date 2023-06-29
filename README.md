<div align="center">
  <img src="https://github.com/gawbsouza/42-pdh/blob/main/dark/ft_printf_dark.svg"><br>
  <a href="https://github.com/gawbsouza/42-pdh"><img src="https://github.com/gawbsouza/42-pdh/blob/main/badge/42pdh_badge.svg"></a>
</div>

___
Program name | Files to turn in | Makefile rules | External functions | result
:---: |:---: | :---: | :---: | :---:
libftprint.a | Makefile, \*.h, \*/\*.h, \*.c, \*/\*.c | NAME, all, clean, fclean, re | malloc, free, write, va_start, va_arg, va_copy, va_end, (libft) | 100/100%

## Objective

> Write a library that contains ft_printf(), a function that will mimic the original printf().

## Prototype

```c
int	ft_printf(const char *, ...);
```

## Simple Code Execution

```c
#include "ft_printf.h"

int  main(void)
{
	ft_printf("%c\n", byte);
	ft_printf("%s\n", string);
	ft_printf("%d %i\n", number1, number2);
	ft_printf("%p\n", pointer);
	ft_printf("%x %X\n", number3, number4);
	ft_printf("%%\n");
	return (0);
}
```
