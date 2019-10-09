# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: airatisakov <airatisakov@student.42.fr>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/04 12:42:28 by ycameron          #+#    #+#              #
#    Updated: 2019/10/01 14:59:51 by airatisakov      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

SOURCES=ft_putchar.c ft_putstr.c ft_putstr_fd.c ft_putchar_fd.c ft_putnbr.c \
ft_putnbr_fd.c ft_putendl.c ft_putendl_fd.c ft_memset.c ft_memcpy.c \
ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_memdel.c ft_memalloc.c \
ft_bzero.c ft_isspace.c ft_isupper.c ft_islower.c ft_isalpha.c ft_isdigit.c \
ft_isascii.c ft_isalnum.c ft_isprint.c ft_toupper.c ft_tolower.c ft_strlen.c \
ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c \
ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c \
ft_atoi.c ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c \
ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c \
ft_strtrim.c ft_strndup.c ft_lstadd.c ft_lstnew.c ft_lstdelone.c ft_lstdel.c \
ft_lstiter.c ft_lstmap.c ft_numlen.c ft_itoa.c ft_cwords.c ft_strsplit.c \
ft_wordlen.c ft_delstr.c ft_word_delim.c ft_min.c ft_max.c ft_lstrev.c \
ft_strchri.c

OBJECTS = $(SOURCES:%.c=%.o)

INCLUDES = ./

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJECTS)
	@ar rc $(NAME) $(OBJECTS)

%.o: %.c libft.h
	@gcc -Wall -Wextra -Werror -I$(INCLUDES) -c $< -o $@

clean:
	@/bin/rm -f $(OBJECTS)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all