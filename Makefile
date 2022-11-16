NAME = libftprintf.a
CFLAGS = -Wall -Wextra -Werror
LIBPATH = libft/
# ==========COLORS==========
RED			:=	\033[1;31m
GREEN		:=	\033[1;32m
YELLOW		:=	\033[1;33m
BLUE		:=	\033[1;34m
PURPLE		:=	\033[1;35m
CYAN		:=	\033[1;36m
WHITE		:=	\033[1;37m
RESET		:=	\033[0m
# ==========FILES===========
SRC =	ft_printf.c hex_handler.c nbr_handler.c
OBJ = $(SRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	@echo "$(GREEN)Creating $(NAME)...$(RESET)"
	@make -C $(LIBPATH) 
	@mv $(LIBPATH)libft.a $(NAME)
	@ar rcs $(NAME) $(OBJ)
	@echo "$(GREEN)$(NAME) created$(RESET)"

$(OBJ):
	@cc $(CFLAGS) -I . -c $(@:.o=.c)

fclean: clean
	@echo "$(PURPLE)Removing $(NAME) and libft.a...$(RESET)"
	@rm -rf $(NAME)
	@make fclean -C $(LIBPATH)
	@echo "$(PURPLE)$(NAME) and libft.a removed.$(RESET)"

clean:
	@echo "$(WHITE)Removing objects...$(RESET)"
	@rm -rf *.o
	@make clean -C $(LIBPATH)
	@echo "$(WHITE)Objects removed.$(RESET)"

re: fclean all
	@echo "$(RED)Update completed.$(RESET)"

norm:
	@echo "$(YELLOW)Running norminette...$(RESET)"
	@norminette
	@echo "$(YELLOW)All OK!$(RESET)"

.PHONY: re, clean, fclean, all
