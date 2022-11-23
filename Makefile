# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgirault <lgirault@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/10 13:58:40 by lgirault          #+#    #+#              #
#    Updated: 2022/11/21 10:43:35 by lgirault         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
AR = ar rcs
RM = rm -rf
SRC =		ft_memcpy.c \
	ft_isalpha.c \
	ft_memmove.c \
	ft_strlcpy.c \
	ft_strrchr.c \
	ft_atoi.c \
	ft_isascii.c \
	ft_memchr.c \
	ft_memset.c \
	ft_strlen.c \
	ft_tolower.c \
	ft_bzero.c \
	ft_isdigit.c \
	ft_memcmp.c \
	ft_strchr.c \
	ft_strncmp.c \
	ft_toupper.c \
	ft_isalnum.c \
	ft_isprint.c \
	ft_memcpy.c \
	ft_strlcat.c \
	ft_strnstr.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_itoa.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_split.c \
	ft_putnbr_fd.c \
	ft_strmapi.c \
	ft_striteri.c \
	

BONUSSRC =	ft_lstnew.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_front.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c \

ifeq (bonus, $(findstring bonus, $(MAKECMDGOALS)))
    SRC = $(BONUSSRC)
endif

OBJ = $(SRC:.c=.o)

BONUSOBJ = $(BONUSSRC:.c=.o)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

all: $(NAME)

bonus: $(NAME)

clean:
	$(RM) $(OBJ) $(BONUSOBJ)

fclean: clean
	$(RM) $(NAME) $(BONUSOBJ)

re: fclean all

.PHONY: bonus all clean fclean re