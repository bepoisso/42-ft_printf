# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bepoisso <bepoisso@student.42perpignan.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/21 18:34:37 by bepoisso          #+#    #+#              #
#    Updated: 2024/08/25 20:10:47 by bepoisso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#_________________VARIABLE_________________

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
INC_PATH = ./includes
SRC_PATH = ./srcs
OBJ_PATH = ./objects
LIBFT = libft/
LIBFT_A = $(addprefix $(LIBFT), libft.a)

#_________________FILES_________________

SRC_FILES=\

BONUS_FILES=\

SRCS = $(addprefix $(SRC_PATH)/, $(SRC_FILES))
OBJS = $(addprefix $(OBJ_PATH)/, $(SRC_FILES:.c=.o))
BONUS_SRCS = $(addprefix $(SRC_PATH)/, $(BONUS_FILES))
BONUS_OBJS = $(addprefix $(OBJ_PATH)/, $(BONUS_FILES:.c=.o))

#_________________RULES_________________

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT_A)
	$(CC) $(CFLAGS) $(OBJS) $(LIBFT_A) -o $(NAME)

$(LIBFT_A) :
	make -s -C $(LIBFT)

bonus: $(BONUS_OBJS)
	@ar rcs $(NAME) $^

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c | $(OBJ_PATH)
	$(CC) $(CFLAGS) -I$(INC_PATH) -o $@ -c $<

clean:
	rm -rf $(OBJS) $(BONUS_OBJS)
	make -C $(LIBFT) clean

fclean: clean
	rm -f $(NAME)
	make -C $(LIBFT) clean

re: fclean all

.PHONY: all bonus clean fclean re
