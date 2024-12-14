<div align="center">
  <img height="200" src="https://raw.githubusercontent.com/Benjamin-poisson/My_image_bank/refs/heads/main/printf.png"  />
</div>

# ft_printf - Custom Print Function

The `ft_printf` project is an exercise to re-implement the standard `printf()` function in C. This project provides a thorough introduction to variadic functions and demonstrates the ability to handle variable argument lists in C programming.

## Status
<div align="center">
  <img height="200" src="https://raw.githubusercontent.com/Benjamin-poisson/My_image_bank/refs/heads/main/printf_success.png"  />
</div>


## Overview

The goal of this project is to create your own version of the `printf()` function, which can handle a variety of data types and formatting options. This exercise will improve your understanding of variadic functions and will help you practice writing extensible and robust code.

## Great resources

- [Notion's Oceano - ft_printf](https://suspectedoceano.notion.site/printf-06cba643d653410bb03417532ca71c25)
- [Ft_printf Tester Francinette](https://github.com/xicodomingues/francinette)

## Mandatory

<table>
  <tr>
    <th>Program name</th>
    <td>libftprintf.a</td>
  </tr>
  <tr>
    <th>Turn in files</th>
    <td>Makefile, *.h, *.c</td>
  </tr>
  <tr>
    <th>Makefile</th>
    <td>Yes</td>
  </tr>
  <tr>
    <th>External functs.</th>
    <td>malloc, free, write, va_start, va_arg, va_copy, va_end</td>
  </tr>
  <tr>
    <th>Libft authorized</th>
    <td>Yes</td>
  </tr>
  <tr>
    <th>Description</th>
    <td>Implement your own version of the printf() function from libc.</td>
  </tr>
</table>

- Global variables are forbidden.
- Subfunctions should be defined as static to avoid publishing them with your library.
- Submit all files in the root of your repository.
- Unused files should not be submitted.
- Ensure all .c files compile with the flags -Wall, -Wextra, and -Werror.
- Use `ar` to create your library; `libtool` is not permitted.

## Functions

The `ft_printf` function should support the following conversions:
- `%c` : Print a single character.
- `%s` : Print a string.
- `%p` : Print a pointer in hexadecimal.
- `%d` : Print a decimal number.
- `%i` : Print an integer.
- `%u` : Print an unsigned decimal number.
- `%x` : Print a hexadecimal number (lowercase letters).
- `%X` : Print a hexadecimal number (uppercase letters).
- `%%` : Print a percent sign.

## Bonus

Bonus features are optional but encouraged:
- Handle flags `-`, `0`, `.`, and minimum field width with all conversions.
- Manage flags `#` and `+` (including space as a flag).

Bonuses will only be evaluated if the mandatory part is flawless. If any mandatory requirement is not met, the bonus will not be considered.
