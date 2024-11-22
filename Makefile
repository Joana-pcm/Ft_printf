# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpatrici <jpatrici@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/07 11:12:30 by jpatrici          #+#    #+#              #
#    Updated: 2024/11/07 14:12:27 by jpatrici         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc

CCFLAGS = -Werror -Wall -Wextra

SRC = ft_printf.c ft_printnum.c ft_printstr.c \
	  ft_printchr.c ft_printptr.c ft_printhex.c \
	  ft_printunint.c

OBJS = $(SRC:.c=.o)

NAME = libftprintf.a

LIBFT = ./libft/libft.a

LIBFTDIR = ./libft/

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	ar rcs $(NAME) $(OBJS) $(LIBFT) $(LIBFTDIR)/*.o

$(LIBFT): $(LIBFTDIR)
	$(MAKE) -C $(LIBFTDIR)
%.o: %.c
	$(CC) $(CCFLAGS) -o $@ -c $<

clean: 
	rm -f $(OBJS) 
	$(MAKE) clean -C $(LIBFTDIR)

fclean: clean
	rm -f $(NAME)
	$(MAKE) fclean -C $(LIBFTDIR)

re: fclean all
