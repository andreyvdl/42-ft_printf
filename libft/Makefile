# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adantas- <adantas-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/01 16:25:52 by adantas-          #+#    #+#              #
#    Updated: 2022/11/03 14:51:36 by adantas-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		:=	libft.a
CFLAGS		:=	-Wall -Wextra -Werror
# ================================== COLORS ====================================
GRAY		:=	\033[1;30m
RED			:=	\033[1;31m
GREEN		:=	\033[1;32m
YELLOW		:=	\033[1;33m
BLUE		:=	\033[1;34m
PURPLE		:=	\033[1;35m
CYAN		:=	\033[1;36m
WHITE		:=	\033[1;37m
RESET		:=	\033[0m
# ================================== FILES =====================================
FILES	:=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
			ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
			ft_memset.c ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
			ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c \
			ft_substr.c ft_strjoin.c ft_strmapi.c ft_striteri.c ft_strtrim.c ft_split.c \
			ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
			ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJS		=	$(FILES:%.c=%.o)
# ==============================================================================

all:		$(NAME)

$(NAME):	$(OBJS)
	@echo "$(GREEN)Creating $(NAME)...$(RESET)"
	@ar rcs $(NAME) $(OBJS)
	@echo "$(GREEN)$(NAME) created$(RESET)"

$(OBJS):
	@cc $(CFLAGS) -I libft.h -c $(@:.o=.c)

clean:
	@rm -rf *.o

fclean:		clean
	@rm -rf $(NAME)

re:			fclean all
	@echo "$(RED)Update completed.$(RESET)"

norme:
	@echo "$(YELLOW)Running norminette...$(RESET)"
	@norminette *.c *.h
	@echo "$(YELLOW)Everything OK.$(RESET)"

.PHONY: all bonus clean fclean re norme
