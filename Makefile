# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bepoisso <bepoisso@student.42perpignan.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/21 18:34:37 by bepoisso          #+#    #+#              #
#    Updated: 2024/08/26 01:01:23 by bepoisso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
EXEC = compil

SRC_DIR = srcs
OBJ_DIR = objs
INC_DIR = includes

SRCS = $(SRC_DIR)/ft_base.c $(SRC_DIR)/ft_printf.c $(SRC_DIR)/ft_string.c
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

CFLAGS = -Wall -Wextra -Werror -I$(INC_DIR)
LIBFT = libft/libft.a

all: $(NAME)

$(NAME): $(OBJS)
	@make -C libft
	@ar rcs $(NAME) $(OBJS) libft/*.o

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

clean:
	@make clean -C libft
	@rm -rf $(OBJ_DIR)
	@rm -rf main.o

fclean: clean
	@make fclean -C libft
	@rm -f $(NAME) $(EXEC)

re: fclean all

.PHONY: all clean fclean re
